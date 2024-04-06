<?php
header('Content-type:text/css; charset:utf-8');

include("con_db2.php");
$selector="select * from view where id=(select max(id) from view)";
$exe=mysqli_query($connect,$selector);
if($column=mysqli_fetch_assoc($exe)){
?>



body {

    background-color: <?php echo $column['bgcolor']?> !important ;

}


.header {
   /* background-color: #09415d !important ; */
    background-color: <?php echo $column['ulcolor']?> !important ; 
    color : white !important; 
}



h1{

  /*  color: white !important;*/

    color: <?php echo $column['H1_Color']?> !important;   /* First Headline */

}



h2{
   /* color :  #09415d !important; */
    color: <?php echo $column['H2 Color']?> !important;   /* second Headline */ 
}


h3{
    /*color :  #09415d !important;*/ 
    color: <?php echo $column['H3_Color']?> !important;   /* second Headline */
}


h4{


    color: <?php echo $column['H4_Color']?> !important;   /* second Headline */


}



h5{

    color: <?php echo $column['H5 color']?> !important;   /* second Headline */

}



.dropdown-menu megamenu show{


   /* background-color : #09415d !important ; */
   

    color : white !important ; 

}


.navbar .megamenu {
   
    background-color : <?php echo $column['sub1color']?> !important ; 
   
}

button{
   /* background-color : #c4a948 !important ;*/ 
    /*color : white !important ; */
}

a:hover{

   /* color : #c4a948 !important; */
    color: <?php echo $column['Link Hover']?> !important;

}



input:[type:button]{
    color : #c5c5c5 !important; 
}


p{


/*color:black!important;*/

}




<?php


}



?>