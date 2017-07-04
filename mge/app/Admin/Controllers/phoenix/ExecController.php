<?php

namespace App\Admin\Controllers\phoenix;

use App\Models\ConfigPhoenix;
use App\Models\Phoenixs;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;

class ExecController extends Controller
{
    use ModelForm;

    private static $status = [
        0=>'完成',
        1=>'处理中',
    ];


    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Oath');
            // $content->description('');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $phoenixs = new Phoenixs;
            $phoenixs->where('id', $id)->update(array('status'=>0));
//'updated_at'=>date('Y-m-d H:i:s')
            $success = new MessageBag([
                'title'   => 'Oath',
                'message' => 'Do Success',
            ]);

            return redirect(admin_url('phoenix/exec'))->with(compact('success'));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create(Request $request)
    {
        if (isset($request->name)){
            // 新增逻辑
            $phoenixs = new Phoenixs;

            $phoenixs->type = $request->input('type');
            $phoenixs->name = $request->input('name');
            $phoenixs->describe = $request->input('describe');
            $phoenixs->status = 1;

            $phoenixs->save();

            $success = new MessageBag([
                'title'   => 'Oath',
                'message' => 'Create Success',
            ]);

            return redirect(admin_url('phoenix/exec'))->with(compact('success'));
        }else{
            return Admin::content(function (Content $content) {

                $content->header('Oath');

                $content->body($this->form());
            });
        }
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Phoenixs::class, function (Grid $grid) {

            $grid->actions(function ($actions) {
                if ($actions->row->status == ExecController::$status[0]){
                    $actions->disableDelete();
                }
                $actions->disableEdit();
            });

            $grid->model()->orderBy('status', 'desc');

            $grid->id('ID')->sortable();

            $grid->conf_phoenix('隶属')->display(function ($ConfigPhoenix) {
                return $ConfigPhoenix['name'];
            });

            $grid->column('name', '任务');
            $grid->column('describe', '描述');

            $grid->created_at();
            $grid->updated_at();

            $grid->column('status')->display(function () {
                return ExecController::$status[$this->status];
            });

        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Phoenixs::class, function (Form $form) {
            $form->display('id', 'ID');

            $form->select('type', '隶属')->options(
                toSelect(
                    ConfigPhoenix::all()->toArray(),
                    'id',
                    'name'
                )
            );

            $form->text('name', '任务')->rules('required|min:3');
            $form->textarea('describe', '描述')->rows(5);

            $form->display('created_at', 'Created At');
            $form->setAction(admin_url('phoenix/exec/create'));
        });
    }
}
