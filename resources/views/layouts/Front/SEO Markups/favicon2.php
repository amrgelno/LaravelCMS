  <!-- favicon  and  apple touch  -->

  <?php
 include("con_db2.php");
$selector="select * From  companies";
$boxquery=mysqli_query($connect,$selector);
while($column=mysqli_fetch_assoc($boxquery)){
?>
      <link rel="apple-touch-icon" href="Front/IMG/<?php echo $column['path_pic'] ?>">
      <link rel="apple-touch-icon" sizes="57x57" href="Front/IMG/<?php echo $column['path_pic']    ?> ">
      <link rel="apple-touch-icon" sizes="72x72" href="Front/IMG/<?php echo $column['path_pic']    ?>">
      <link rel="apple-touch-icon" sizes="76x76" href="Front/IMG/<?php echo $column['path_pic']    ?>">
      <link rel="apple-touch-icon" sizes="114x114" href="Front /IMG /<?php echo $column['path_pic']    ?> ">
      <link rel="apple-touch-icon" sizes="120x120" href="Front/IMG/<?php echo $column['path_pic']    ?>">
      <link rel="apple-touch-icon" sizes="144x144" href="Front/IMG/<?php echo $column['path_pic']    ?>">
      <link rel="apple-touch-icon" sizes="152x152" href="'Front/IMG/<?php echo $column['path_pic']    ?>">
      <link rel="icon" type="image/x-icon" href="'Front/IMG/<?php echo $column['path_pic']    ?> " />
 <?php
}
?>
  <!-- end favicon  and  apple touch   -->

