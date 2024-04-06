

{

  "data": [

<?php
include("con_db2.php");
$selector="select * from users";
$exe=mysqli_query($connect,$selector);
if($column=mysqli_fetch_assoc($exe)){
?>
    {"Name": "<?php echo $column['name']?>",
  "email": "<?php echo $column['email']?>",
   "Post": "    "
    },

<?php
}
?>
  {
  "Name": "AmrHassan",
  "email": "hello@cypress.io",
  "Post": "Fixtures are a great way to mock data for responses to routes"
    }
]
}



