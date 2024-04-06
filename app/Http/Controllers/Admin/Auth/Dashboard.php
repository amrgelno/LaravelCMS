<?php


namespace  App\Http\Controllers\Admin\Auth;
use Illuminate\Support\Facades\Auth;
use App\Models\Admin;
use App\Models\view;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class Dashboard extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware('checkdata');   // middleware for  /admin/Dashboard Route  when user logout
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {


        //method 1


        // return view('Admin.auth.dashboard');

        //method 2



        $view=view::whereRaw("ID = (select Max(id) from view )")->get();
        foreach ($view as $viewitem){
        
            $BusinessModel = $viewitem->BusinessModel ; 
        
           }


        @$Admin=auth::guard('admin');

         return view('Admin.Auth.dashboard',compact('Admin'),[

            'BSModel'=>$BusinessModel

         ]);



    }
}
