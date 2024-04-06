
<?php
 include("con_db2.php");

if(@$_GET[' MainM_ID']){
    $selector="select * From  keywords  Where  nav_id='@$_GET[MainM_ID]' "  ;
}elseif(@$_GET['box_ID']){

    $selector="select * From  keywords  Where   box_id='@$_GET[box_ID]'  "  ;
}elseif(@$_GET['Topic_ID']){

 $selector="select * From  keywords  Where  relatedtopic_id='@$_GET[Topic_ID]' "  ;

}else{
   $selector="select * From  keywords  Where  nav_id=1"  ;
}

$keywordsquery=mysqli_query($connect,$selector);
while($column=mysqli_fetch_assoc($keywordsquery)){
?>
    <title>    <?php echo $column['title']    ?> </title>
    <meta name="title"   content="<?php   echo  $column['title']  ?>">
    <meta name="description"   content="<?php echo $column['description']  ?> ">
    <meta name="keywords" content="<?php echo $column['Keyword']  ?>">
    <meta name="author" content="<?php echo $column['author']  ?>">
    <!--Open Graph Protocol-->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="<?php echo $column['title']  ?>" />
    <meta property="og:description" content="<?php echo $column['Keyword']  ?>" />
<?php
}
?>

<html prefix="og: https://ogp.me/ns#">
<meta property="og:locale" content="ar_AR" />
<meta property="og:site_name" :content="Domain_site" />
<meta property="article:modified_time" content="2020-07-23T06:20:03+00:00" />
<meta property="og:image" content="  " />
<meta property="og:image:width" content="570" />
<meta property="og:image:height" content="380" />
<!--Twitter Cards-->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content=" " />
<!--meta tag (customize) -->
<meta name="robots" content="index, follow">
<meta name="language" content="Arabic">
<!--End meta tag (customize) -->
