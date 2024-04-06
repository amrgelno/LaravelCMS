<div id='loader'>


    <div id='load' align='center'>

        <img src="{{ asset('Front/ICON/spinner-2x.gif') }}" class="loading-logo">
        <br />
        <div class="dashboaedpreloader"> <span> Loading customizer_DashBoard </span></div>
        <!-- <div class="loading"> loading... </div> -->
    </div>

</div>

<script>
    function loader() {
        $("#loader").delay(6000).fadeOut("fast");
    }
</script>
