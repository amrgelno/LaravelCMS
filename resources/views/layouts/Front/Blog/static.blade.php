<div class="headline col-sm-7 col-md-7  col-lg-7 " v-for="(data,i) in static" :key="i"
    v-if="data.SNumber_Name  != ''  &&  data.SNumber_Name  != Null  ">
    <h2>
        <div class="clear"></div>@{{ data.SNumber_Name }}
    </h2>
</div>

<!-- <div class="headline col-sm-6 col-md-6  col-lg-7 "> <h1><div class="clear"></div>اعمالنا بالارقام    </h1>  </div> -->
<div class="FRAME_static" v-for="(data,i) in static" :key="i">

    <div class="img1_static">
        <img :src="'Front/IMG/' + data.ImageName" loading='lazy' title='Asphallt.png' alt='data.ImageName '
         style="filter: brightness(2) invert(5);"   class="front_static" />

        <div class="title_static">
            <span class="title_s" style='color:black;'>@{{ data.title }}</span> <br />
            <span class="counter" style='color:#418bca;' :data-target='data.SNumber_Num'> 0 </span>
            <span class="targetval" style='color:#418bca; display:none;'>@{{ data.SNumber_Num }} </span>

        </div>


    </div>
</div>
