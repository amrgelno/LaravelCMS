<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://127.0.0.1:8000/Front/CMSCSS/CMSXS.css" rel="stylesheet" type="text/css" />
   <link href="http://127.0.0.1:8000/Front/CMSCSS/CMSSm.css" rel="stylesheet" type="text/css" />
   <link href="http://127.0.0.1:8000/Front/CMSCSS/CMSLg.css" rel="stylesheet" type="text/css"/>
   <link href="http://127.0.0.1:8000/Front/CMSCSS/CMSMD.css" rel="stylesheet" type="text/css"/>
    <title>Client_Request</title>
</head>
<style>

   #Box-Anyltics{ 
   display:flex;
    flex:2; 
    flex-flow: row;
   }
    .Box-Anyltics {
    width:30%;
    margin-left: 18px;
    padding: 20px;
    /* padding-top: 10px; */
    border: 3px double #006;
    border-radius: 5px;
    color: #F90;
    font-weight: bolder;
   
}

</style>

<body>
<h1> * all client request Report from contact form   </h1>

<div id="Box-Anyltics" >

<div class="card-body">
    <div class='card card-primary card-outline'>

    <div class="table-responsive col-lg-7">
    <table  border="1"  class="table table-responsive ">

    <tr>

<td>  #   </td>
<td> username  </td>
<td>  email   </td>
<td> Client_POST  </td>

</tr>

@php   $i=0;   @endphp

@foreach($clients  as  $client)

<tr>
<td> {{++$i}}     </td>
<td> {{$client->username}}  </td>
<td> {{$client->email}}  </td>
<td>  {{$client->Client_POST}}   </td>

</tr>

@endforeach
</div>
</div>

</div>
</table>


</body>
</html>



