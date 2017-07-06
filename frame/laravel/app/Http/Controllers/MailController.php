<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Mail\OrderShipped;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    //
    public function sendMail(Request $request){
        Mail::to($request->user())->send(new OrderShipped());
    }
}
