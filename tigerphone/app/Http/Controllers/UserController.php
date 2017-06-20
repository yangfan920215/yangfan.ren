<?php

namespace App\Http\Controllers;

use InvitationCode;
use UserUser;
use Activity;
use ActivityRule;
use ActivityReport;

use Illuminate\Support\Facades\Input;
use Validator;
use Carbon\Carbon;
use DB;
use libs\Encrypt;



class UserController extends Controller
{
    public function __construct()
    {
    }

    /**
     * 实际注册逻辑
     * @param $sKeyword
     * @return mixed
     */
    public function register()
    {
        // 用户名 姓名 联系QQ 手机号 电子邮箱 密码 确认密码 邀请码 协议确认
        $data = Input::all();
        // 获取验证码
        $sCode = Input::get('code');

        //判断是否有写推荐码
        if ($sCode) {
            if (strlen($sCode) != 8){
                _exit(5);
            }

            // 判断邀请码是否合法
            $oInvitationCode = InvitationCode::where('invitation_code', $data['code'])->first();
            if (!$oInvitationCode){
                _exit(5);
            }

            $iRecommenderId = $oInvitationCode->user_id;
            $sRecommender = $oInvitationCode->username;
            $iParentId = $oInvitationCode->parent_id;
            $sParent = $oInvitationCode->parent_username;
            $aExtraData['parent_id'] = $iParentId;
            $aExtraData['parent'] = $sParent;
            $aExtraData['recommender'] = $sRecommender;
            $aExtraData['recommender_id'] = $iRecommenderId;
        }

        $aExtraData['is_agent'] = 0;
        $aExtraData['register_at'] = Carbon::now()->toDateTimeString();

        // 手机端新增 2017-06-20 17：07
        $aExtraData['signin_at'] = date('Y-m-d H:i:s');

        unset($data['code']);
        $data = array_merge($data, $aExtraData);
        DB::connection()->beginTransaction();
        $oUser = new UserUser;
        // 生成新建用户的信息
        $aReturnMsg = $oUser->generateUserInfo($data);

        if(! $aReturnMsg['success']) {
            _exit(2);
        }
        $oUser->is_from_link = 0;

        $sError = "";
        $bSucc = $this->createProcess($oUser, null, null, $sError);
        #D($sError);
        if ($bSucc) {
            $bSuccess = true;
            if ($sCode) {
                // 取出'category' => Activity::CATEGORY_RECOMMEND的活动配置
                $oActivity = Activity::doWhere([
                    'category' => Activity::CATEGORY_RECOMMEND
                ])->first();

                if (!$oActivity) {
                    _exit(6);
                }
                // 取出ActivityRule中id=Activity.rule.id的值
                $oActivityRule = ActivityRule::find($oActivity->rule_id);

                if (!$oActivityRule) {
                    _exit(7);
                }

                $aJobData = [
                    'category' => Activity::CATEGORY_RECOMMEND,
                    'activity_id' => $oActivity->id,
                    'activity_name' => $oActivity->name,
                    'recommender' => $oUser->username,
                    'recommender_id' => $oUser->id,
                    'username' => $sRecommender,
                    'user_id' => $iRecommenderId,
                    'signup_at' => date('Y-m-d'),
                    'bonus' => $oActivityRule->bonus_max,
                    'multiple' => $oActivityRule->multiple,
                    'total_turnover' => $oActivityRule->bonus_max * $oActivityRule->multiple,
                    'status' => ActivityReport::STATUS_NORMAL,
                    'register_ip' => $oUser->register_ip,
                ];

                $oActivityReport = new ActivityReport();
                $oActivityReport = $oActivityReport->fill($aJobData);
                if (!$oActivityReport->save()) {
                    $bSuccess = false;
                    DB::connection()->rollback();
                    _exit(4);
                }
            }

            DB::connection()->commit();
            //注册时生成第三方平台帐号，但不返回值
            $sPassword = $data['password'];
            $redis = new \Redis();
            $redis->connect('127.0.0.1',6379);
            $redis->lPush('CreatePlayer',json_encode(['user_id'=>$oUser->id, 'password'=>Encrypt::encode($sPassword)]));
            _exit(0);
        } else {

            DB::connection()->rollback();
            // 添加失败
            _exit(4);
        }
    }

    public function login(){
        $iLoginTimes = (int)Session::get('LOGIN_TIMES');
        Session::put('LOGIN_TIMES', ++$iLoginTimes);
        // pr(Input::get('password'));
//        $aRandom = explode('_', trim(Input::get('_random')));
//        if (count($aRandom) != 2 || (count($aRandom) == 2 && ($aRandom[1] != Session::get($aRandom[0]))) ) {
//            file_put_contents('/tmp/debug_login', json_encode($aRandom).'-'.Session::get($aRandom[0])."111\n\r", FILE_APPEND);
//            return Redirect::back()
//                ->withInput()
//                ->with('error', __('_basic.login-fail-wrong'));
//        }

        // 默认前3次登录不用验证码, 3次登录失败后需要验证码, 登录成功则清空登录次数
        if (isset($iLoginTimes) && ($iLoginTimes > 3)) {
            // 验证码校验
            if ($this->validateCaptchaError($sErrorMsg)) {
                return Redirect::back()
                    ->withInput()
                    ->with('error', $sErrorMsg);
            }
        }

        $sUsername = Input::get('username');
        $sPassword = Input::get('password');
        // 凭证
        // $credentials = array('username' => $sUsername, 'password' => $sPassword);
        // 是否记住登录状态
        $remember  = Input::get('remember-me', 0);
        $user = UserUser::where('username', '=', $sUsername)->first();
        if (empty($user) || !Hash::check($sPassword, $user->password)) {
            return $this->goBack('error', __('_basic.login-fail-wrong'), $user);
        }
        if ($user->blocked == 1) {
            return $this->goBack('error', __('_basic.login-fail-blocked'), $user);
        }

        return $this->postSign($user);
    }


    /**
     * [createProcess 开户流程]
     * @param  [Object] $oUser       [用户对象]
     * @param  [Array]  $aPrizeGroup [奖金组数据]
     * @param  [Object] $oPrizeGroup [开户链接对象]
     * @param  [String] $sPrizeGroupCode [链接开户特征码]
     * @return [Boolean]             [开户成功/失败]
     */
    private function createProcess($oUser, $oUserRegisterLink, $sCode, &$sError)
    {
        $bSucc = false;

        if ($bSucc = $oUser->save()) {
            $oAccount = $oUser->generateAccountInfo();
            if ($bSucc = $oAccount->save()) {

                $oUser->account_id = $oAccount->id;

                if ($bSucc = $oUser->save()) {
                    $bSucc = true;

                }else $sError = $oUser->getValidationErrorString();

                // 只有链接开户时需要增加链接的开户数以及关联开户用户
                if ($sCode && $bSucc) {
                    $oUserRegisterLink->increment('created_count');

                    if ($oUserRegisterLink->is_admin && $oUserRegisterLink->created_count == 0) {
                        $oUserRegisterLink->increment('status');
                    }

                    $oUserRegisterLink->users()->attach($oUser->id, ['url' => $oUserRegisterLink->url, 'username' => $oUser->username]);
                }

            }else $sError = $oAccount->getValidationErrorString();
        }else $sError = $oUser->getValidationErrorString();
        return $bSucc;
    }

}
