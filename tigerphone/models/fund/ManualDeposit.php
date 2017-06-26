<?php

class ManualDeposit extends BaseModel {

    const STATUS_NOT_VERIFIED = 0;
    const STATUS_VERIFIED = 1;
    const STATUS_REFUSED = 2;
    const STATUS_DEPOSIT_SUCCESS = 3;
    const STATUS_DEPOSIT_ERROR = 4;

    public static $amountAccuracy = 2;
    public static $checkboxenable = true;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'manual_deposits';
    protected $fillable = [
        'user_id',
        'username',
        'amount_add_coin',
        'transaction_type_id',
        'note',
        'administrator',
        'admin_user_id',
        'author',
        'author_admin_user_id',
    ];
    public static $resourceName = 'ManualDeposit';

    /**
     * the columns for list page
     * @var array
     */
    public static $columnForList = [
        'id',
        'username',
        'amount_add_coin',
        'transaction_description',
        'administrator',
        'author',
        'note',
        'status',
        'created_at',
    ];
    public static $aDepositStatus = [
        self::STATUS_NOT_VERIFIED => 'not-verified',
        self::STATUS_VERIFIED => 'verified',
        self::STATUS_REFUSED => 'refused',
        self::STATUS_DEPOSIT_SUCCESS => 'deposit-success',
        self::STATUS_DEPOSIT_ERROR => 'deposit-error',
    ];
    public static $rules = [
        'user_id' => 'integer',
        'is_tester' => 'in:0, 1',
        'amount_add_coin' => 'numeric',
        'transaction_type_id' => 'integer',
        'transaction_description' => 'between:0,50',
        'note' => 'between:0,100',
        'admin_user_id' => 'integer',
        'status' => 'in:0,1,2',
    ];
    public static $htmlNumberColumns = [
    ];
    public static $viewColumnMaps = [
    ];

    /**
     * 下拉列表框字段配置
     * @var array
     */
    public static $htmlSelectColumns = [
        'status' => 'depositStatus',
    ];
    public static $noOrderByColumns = [
    ];

    /**
     * order by config
     * @var array
     */
    public $orderColumns = [
        'id' => 'desc',
    ];
    public static $listColumnMaps = [
        'status' => 'friendly_status',
        'amount_add_coin' => 'amount_add_coin_formatted',
    ];
    
   public static $aValidTransactionTypes = [
            TransactionType::TYPE_DEPOSIT_BY_ADMIN,
            TransactionType::TYPE_SETTLING_CLAIMS,
            TransactionType::TYPE_SEND_BONUS,
            TransactionType::TYPE_VIOLATION_CLAIMS,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_LOSS,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_PT,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_IM,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_AG,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_HB,
            TransactionType::TYPE_DEPOSIT_BY_ADMIN_FOR_MG,
            TransactionType::TYPE_DAY_COMMISSION,
    ];

    public function changeStatus($iFromStatus, $iToStatus) {
        $aExtraData['status'] = $iToStatus;
        $bSucc = self::where('id', '=', $this->id)->where('status', '=', $iFromStatus)->update($aExtraData);
        return $bSucc;
    }

    protected function getFriendlyStatusAttribute() {
        return __('_manualDeposit.' . self::$aDepositStatus[$this->status]);
    }

    protected function getAmountAddCoinFormattedAttribute() {
        return $this->getFormattedNumberForHtml('amount_add_coin');
    }

    static function getTotalAmount($aCondition){
        if(empty($aCondition)){
            return 0;
        }
        $sum = self::doWhere($aCondition)->sum('amount_add_coin');
        return $sum;
    }

}
