<?php

namespace App\Admin\Controllers\phoenix;

use App\Models\Controls as YourModel;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;

class ControlsController extends Controller
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

            $content->header('Controls');
            // $content->description('description');

            $content->body($this->grid());
        });
    }


    /**
     * Create interface.
     *
     * @return Content
     */
    public function create(Request $request)
    {
        if (isset($request->title)){
            // 新增逻辑
            $controls = new YourModel;

            $controls->title = $request->input('title');
            $controls->describe = $request->input('describe');

            $controls->save();

            $success = new MessageBag([
                'title'   => 'Controls',
                'message' => 'Create Success',
            ]);

            return redirect(admin_url('phoenix/controls'))->with(compact('success'));
        }else{
            return Admin::content(function (Content $content) {
                $content->header('Controls');
                // $content->description('description');

                $content->body($this->form());
            });
        }
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

            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(YourModel::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('title', 'Title');
            $grid->column('describe', 'Describe');

            $grid->column('duration_at')->display(function () {
                return xtime($this->created_at, date('Y-m-d H:i:s'));
            });

            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(YourModel::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', 'Title')->rules('required|min:3');
            $form->textarea('describe', 'Describe')->rows(5);
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->setAction(admin_url('phoenix/controls/create'));
        });
    }
}
