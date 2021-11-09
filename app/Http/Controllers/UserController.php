<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Providers\LoginHistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function user (Request $r) {
        $user = $r->user();
        
        if ($user) {
            return response([
                'user' => $user,
                'email' => $user->email
            ]);
        } else {
            return response([
                'errors' => [
                    'Invalid token. Who are you?'
                ]
            ], 403);
        }
    }

    public function store (Request $r) {
        $validator = \Validator::make($r->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response([
                'errors' => $validator->errors()->all()
            ], 400);
        }

        $user = User::create([
            'name' => $r->name,
            'email' => $r->email,
            'password' => $r->password,
        ]); 

        return response([
            'user' => $user,
        ]);
    }

    public function login (Request $r) {
        $user = User::where('email', $r->email)->first();

        if ($user) {
            if (Hash::check($r->password, $user->password)) {
                $token = $user->createToken('Test Token')->accessToken;

                event(new LoginHistory($user));

                return response([
                    'token' => $token,
                    'email' => $user->email
                ]);
            } else {
                return response([
                    'errors' => [
                        'Wrong password. Please try again.'
                    ]
                ], 403);
            }
        } else {
            return response([
                'errors' => [
                    'User not found. Please try again.'
                ]
            ], 404);
        }
    }

    public function logout (Request $r) {
        if ($r->user()) {
            $token = $r->user()->token();
            $token->revoke();
        }

        return response([
            'message' => 'User logged out'
        ]);
    }
}
