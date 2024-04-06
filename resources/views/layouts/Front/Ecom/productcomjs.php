
<?php
include("con_db2.php");
@$Box_ID=$_GET['box_ID'];
$Box="select * from member_pr where Box_ID='$Box_ID' ";
$BoxQuery=mysqli_query($connect,$Box);
while($column=mysqli_fetch_assoc($BoxQuery)){
?>

<script>
    function Addfav<?php echo $column['id'] ?>() {

		var IDf= $('#IDf<?php  echo auth::guard('member')->user()->id ?>').val();
     var Off_id = $('#Off_id<?php echo $column['id']  ?>').val();

     $.ajaxSetup({

headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
}
});


 $('#cart').load('<?php echo route('ADD_fav') ?>',{
Off_id:Off_id,
       IDf:IDf,token:"<?php echo csrf_token()?>",Method:"POST"});
	}

    </script>

<script>

    function Delfav<?php echo $column['id']?>() {

		var IDf= $('#IDf<?php  echo  auth::guard('member')->user()->id ?>').val();
     var Off_id = $('#Off_id<?php echo $column['id'] ?>').val();

     $.ajaxSetup({

headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
}
});


 $('#cart').load('<?php echo route('Del_fav')?>',{
Off_id:Off_id,
       IDf:IDf,token:"<?php echo csrf_token()?>",Method:"POST"});
	}

    </script>
<?php
}
?>
