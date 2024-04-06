<?php

include("connect.php");

class MetaTag  extends  condb{

public function sql(){

$selector="select * From  companies";

$boxquery=$this->connectF()->query($selector);

while($column=mysqli_fetch_object($boxquery)){

?>
<link rel="apple-touch-icon" href="Front/IMG/<?php echo $column->path_pic ?>">
<link rel="apple-touch-icon" sizes="57x57" href="Front/IMG/<?php echo $column->path_pic  ?> ">
<link rel="apple-touch-icon" sizes="72x72" href="Front/IMG/<?php echo $column->path_pic  ?>">
<link rel="apple-touch-icon" sizes="76x76" href="Front/IMG/<?php echo $column->path_pic ?>">
<link rel="apple-touch-icon" sizes="114x114" href="Front/IMG/<?php echo $column->path_pic  ?> ">
<link rel="apple-touch-icon" sizes="120x120" href="Front/IMG/<?php echo $column->path_pic  ?>">
<link rel="apple-touch-icon" sizes="144x144" href="Front/IMG/<?php echo $column->path_pic ?>">
<link rel="apple-touch-icon" sizes="152x152" href="'Front/IMG/<?php echo $column->path_pic ?>">
<link rel="icon" type="image/x-icon" href="'Front/IMG/<?php echo $column->path_pic   ?> " />

<?php
}

if(@$_GET[' MainM_ID']){
$selector="select * From  keywords  Where  nav_id='@$_GET[MainM_ID]' "  ;
}elseif(@$_GET['box_ID']){

$selector="select * From  keywords  Where   box_id='@$_GET[box_ID]'  "  ;
}elseif(@$_GET['Topic_ID']){

$selector="select * From  keywords  Where  relatedtopic_id='@$_GET[Topic_ID]' "  ;

}else{
$selector="select * From  keywords  Where  nav_id=1"  ;
}

$keywordsquery=$this->connectF()->query($selector);
while($column=mysqli_fetch_object($keywordsquery)){
?>
<title><?php echo $column->title  ?> </title>
<meta name="title" content="<?php   echo  $column->title ?>">
<meta name="description" content="<?php echo $column->description ?> ">
<meta name="keywords" content="<?php echo $column->Keyword ?>">
<meta name="author" content="<?php echo $column->author ?>">
<!--Open Graph Protocol-->
<meta property="og:type" content="website" />
<meta property="og:title" content="<?php echo $column->title?>" />
<meta property="og:description" content="<?php echo $column->Keyword?>" />
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

<div itemscope itemtype="http://schema.org/LocalBusiness" style='display:none;'>
                                                                                <?php
$selector="select * From  companies";
$boxquery=$this->connectF()->query($selector);
while($column=mysqli_fetch_object($boxquery)){
?>


                                                                                <h2><span itemprop="name"><?php echo $column->Comp_Name  ?> </span>
                                                                                </h2>
                                                                                <span itemprop="description"> <?php echo $column->WBDescription   ?>
                                                                                </span>
                                                                                <div itemprop="address" itemscope
                                                                                                                                                                itemtype="http://schema.org/PostalAddress">
                                                                                                                                                                <span
                                                                                                                                                                                                                                                itemprop="streetAddress">
                                                                                                                                                                                                                                                <?php echo $column->Address   ?>
                                                                                                                                                                </span>
                                                                                                                                                                <span
                                                                                                                                                                                                                                                itemprop="postalCode">
                                                                                                                                                                                                                                                <?php echo $column->postalCode   ?>
                                                                                                                                                                </span>
                                                                                                                                                                <span
                                                                                                                                                                                                                                                itemprop="addressLocality"><?php echo $column->city   ?>
                                                                                                                                                                </span>,
                                                                                                                                                                <span
                                                                                                                                                                                                                                                itemprop="addressRegion">
                                                                                                                                                                                                                                                <?php echo $column->country   ?>
                                                                                                                                                                </span>
                                                                                </div>
                                                                                Phone: <span itemprop="telephone"> <?php echo $column->Tele_Number   ?>
                                                                                </span>
</div>

<?php
}
?>
</div>






<script type="application/ld+json">
{
                                                                                "@context": "https://schema.org",
                                                                                "@type": "BreadcrumbList",
                                                                                "itemListElement": [


                                                                                                                                                                <?php
$MAIN_ID=1;
$selector="select * From  boxes  Where nav_id = '1' ORDER BY  boxes.ID ASC";
$boxquery=$this->connectF()->query($selector);
while($column=mysqli_fetch_object($boxquery)){
?>


                                                                                                                                                                {

                                                                                                                                                                                                                                                "@type": "ListItem",
                                                                                                                                                                                                                                                "position": <?php echo $column->ID?>,
                                                                                                                                                                                                                                                "name": "Recipes",
                                                                                                                                                                                                                                                "item": "https://asphallt.net?/box_ID=<?php echo $column->ID?>"
                                                                                                                                                                },

                                                                                                                                                                <?php
}
?>

                                                                                                                                                                {
                                                                                                                                                                                                                                                "@type": "ListItem",
                                                                                                                                                                                                                                                "position": "",
                                                                                                                                                                                                                                                "name": "Recipes",
                                                                                                                                                                                                                                                "item": "https://asphallt.net"
                                                                                                                                                                }


                                                                                ]
}
</script>

<?php
}
}



$use= new MetaTag();
$use->connectF();
$use->sql();


?>