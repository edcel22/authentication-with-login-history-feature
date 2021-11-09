<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmail;
use App\Mail\TestEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class TestEmailController extends Controller
{
    //
    public function index () {
        $to = 'receiverEmail@gmail.com';
        $emailData = (object) [
            'content' => 'Test content',
            'subject' => 'test subject'
        ];

        // Mail::to($to)->send(new TestEmail($emailData));
        SendEmail::dispatch($emailData);

        return response([
            'message' => 'Message Sent!'
        ]);
    }
}
