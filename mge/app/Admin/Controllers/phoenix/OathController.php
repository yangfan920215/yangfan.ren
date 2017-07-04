<?php

namespace App\Admin\Controllers\phoenix;

use App\Models\ConfigPhoenix;
use App\Models\ConfigState;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;

class OathController extends Controller
{
    use ModelForm;

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

            $content->header('Oath');

            $content->body($this->form()->edit($id));
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
            $ConfigPhoenix = new ConfigPhoenix;

            $ConfigPhoenix->state_id = $request->input('state_id');
            $ConfigPhoenix->name = $request->input('name');
            $ConfigPhoenix->describe = $request->input('describe');

            $ConfigPhoenix->save();

            $success = new MessageBag([
                'title'   => 'Oath',
                'message' => 'Create Success',
            ]);

            return redirect(admin_url('phoenix/oath'))->with(compact('success'));
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
        return Admin::grid(ConfigPhoenix::class, function (Grid $grid) {
            $grid->id('ID')->sortable();

            // 多表关联
            $grid->config_state('境界')->display(function ($ConfigState) {
                return $ConfigState['name'];
            });

            $grid->column('name', '名称');
            $grid->column('describe', '描述');
            $grid->created_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ConfigPhoenix::class, function (Form $form) {
            $form->display('id', 'ID');

            $form->select('state_id', 'state')->options(
                toSelect(
                    ConfigState::all()->toArray(),
                    'id',
                    'name'
                )
            );

            $form->text('name', 'Name')->rules('required|min:3');
            $form->textarea('describe', 'Describe')->rows(5);

            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->setAction(admin_url('phoenix/oath/create'));
        });
    }
}
