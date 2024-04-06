
        <div itemscope itemtype="http://schema.org/LocalBusiness" style='display:none;'>


        <?php
 include("con_db2.php");
$selector="select * From  companies";
$boxquery=mysqli_query($connect,$selector);
while($column=mysqli_fetch_assoc($boxquery)){
?>


            <h2><span itemprop="name"><?php echo $column['Comp_Name']    ?> </span></h2>
            <span itemprop="description"> <?php echo $column['WBDescription']    ?>  </span>
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <span itemprop="streetAddress">   <?php echo $column['Address']    ?>  </span>
                <span itemprop="postalCode">   <?php echo $column['postalCode']    ?>  </span>
                <span itemprop="addressLocality"><?php echo $column['city']    ?>  </span>,
                <span itemprop="addressRegion">  <?php echo $column['country']    ?>   </span>
            </div>
            Phone: <span itemprop="telephone">  <?php echo $column['Tele_Number']    ?>  </span>
        </div>

        <?php
}
?>
        </div>


