<?php

namespace App\Http\Controllers;

use App\Models\keywords ;
use App\Models\box;
use App\Models\nav ;
use App\Models\member; 
use App\Models\orders; 
use App\Models\users ;
use App\Models\social ;
use App\Models\visitors ;
use App\Models\client_req ;
use App\Models\searchbar;


use Illuminate\Http\Request;

class Cmsstatic extends Controller
{

public function index(){

$Keyword=keywords::all();
$box=box::all();
$nav=nav::all();
$sociallink=social::all();
$users=users::all();
$users=users::all();
$member=member::all();
$clientreq=client_req::all();
$countvisitor=visitors::select('IP_Address')->distinct()->get();
$countvlink=visitors::select('vlink')->distinct()->get();
$client=client_req::select('username')->distinct()->get();
$visitors=visitors::distinct()->paginate(50);
$search=searchbar::select('TargetedKeyword')->distinct()->paginate(50);

//$clientorder=orders::where( 'sender_id' , '!=', '0')->get();


if(count($member) > 0){

    $countmember=count($member);



       }else{

        $countmember=0;



       }

//$countclient=count($clientorder);


return view('Admin.Auth.Cmsstatic',compact('visitors','search'),[

    'Keyword' => count($Keyword), 
    'box'=>count($box),
    'nav'=>count($nav),
    'sociallink'=>count($sociallink),
    'users'=>count($users),
    'countvisitor'=>count($countvisitor),
    'client_req'=>count($clientreq),
    'client'=>count($client),
    'countvlink'=>count($countvlink),
    'countmember' => $countmember

]);


    }


    public function Client(){

        $clients=client_req::all();
        $countclients=count($clients);

        if(($countclients)>=1){

        return view('Admin.Auth.Clientreq',compact('clients'));

        }else{

echo'<h1> No data found  </h1>';

        }
    }

    



public function countKw(Request $request){


    $TargetedKeyword=$request['TargetedKeyword'];

    $search=searchbar::where('TargetedKeyword',$TargetedKeyword)->get();
    
    $countsearch=count($search);

    echo    $countsearch  ;


}

}
