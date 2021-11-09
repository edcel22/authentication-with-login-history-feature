<?php

namespace App\Providers;

use App\Models\LoginHistory as ModelsLoginHistory;
use App\Providers\LoginHistory;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class StoreUserHistory
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  LoginHistory  $event
     * @return void
     */
    public function handle(LoginHistory $event)
    {
        //
        $current_timestamp = Carbon::now()->toDateTimeString();

        $userinfo = $event->user;

        $saveHistory = ModelsLoginHistory::create([
            'name' => $userinfo->name,
            'email' => $userinfo->email,
            'created_at' => $current_timestamp,
            'updated_at' => $current_timestamp,
        ]);

        return $saveHistory;
    }
}
