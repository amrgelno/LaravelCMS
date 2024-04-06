<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Models\client_req;
use Illuminate\Http\Request;

class Frontclientreq extends Controller{
   
   /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    
    protected function validator(array $data)
    {
    return Validator::make($data, [
        'username' => ['required', 'string', 'max:255'],
        'email' => ['required', 'string', 'email', 'max:255'],
        'Client_POST' => ['required', 'string', 'max:500'],
    ]);
}


    public function client_req(request $request){

        client_req::create([
   
            'username' =>$request['first-name'].$request['last-name'],
            'email' => $request['email'],
            'Client_POST' =>$request['message'],
        
           ]);


           return redirect()->route('index');

    }








}
