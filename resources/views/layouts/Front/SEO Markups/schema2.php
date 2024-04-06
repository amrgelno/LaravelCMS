
<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [


<?php
 include("con_db2.php");
$MAIN_ID=1;
$selector="select * From  boxes  Where ID < (SELECT MAX(id) FROM  boxes Where  box_id ='$MAIN_ID' ) ORDER BY  boxes.ID ASC";
$boxquery=mysqli_query($connect,$selector);
while($column=mysqli_fetch_assoc($boxquery)){
?>


{

  "@type": "ListItem",
  "position":   <?php echo $column['ID']?> ,
  "name": "Recipes",
  "item": "https://asphallt.net?/Blog/box_ID=<?php echo $column['ID']?>"
},

<?php
}
?>

{
  "@type": "ListItem",
  "position":'' ,
  "name": "Recipes",
  "item": "https://asphallt.net"
}


        ]
    }
    </script>
