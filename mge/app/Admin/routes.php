<?php

use Illuminate\Routing\Router;

Admin::registerHelpersRoutes();

Route::group([
    'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware'    => ['web', 'admin'],
], function (Router $router) {
    $router->get('/', 'HomeController@index');

    Route::group([
        'prefix'        => 'phoenix',
    ], function (Router $router) {
        $router->get('controls', "phoenix\\ControlsController@index");
        $router->get('controls/create', 'phoenix\\ControlsController@create');
        $router->post('controls/create', 'phoenix\\ControlsController@create');

        $router->get('oath', "phoenix\\OathController@index");
        $router->get('oath/create', 'phoenix\\OathController@create');
        $router->post('oath/create', 'phoenix\\OathController@create');

        $router->get('exec', "phoenix\\ExecController@index");
        $router->get('exec/create', 'phoenix\\ExecController@create');
        $router->post('exec/create', 'phoenix\\ExecController@create');
        $router->delete('exec/{id}', 'phoenix\\ExecController@edit');
    });


});


