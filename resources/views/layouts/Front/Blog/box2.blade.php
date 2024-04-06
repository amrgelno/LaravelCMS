<template>
    <div v-for="(data,i) in box" :key="i" class="headline col-sm-7 col-md-7  col-lg-7 "
        v-if="data.cat_Name  != ''  &&  data.cat_Name  != Null   ">


        <h2>
            <div class="clear"></div> @{{ data.cat_Name }}
        </h2>

    </div>


    <card class="categoriescard" v-for="(data,i) in box" :key="i">
        <overlay>
            <div class="FRAME">
                <div class="imgb"><img :src="'Front/IMG/' + data.ImageName" class="front">
                    <div class="titleb"><a :href="'?box_ID=' + data.ID" id="linker">

                            @if (@$_GET['lang'] == 'en' or empty(@$_GET['lang']))
                                @{{ data.title }}
                            @elseif($_GET['lang'] == 'Ar')
                                <a :href="'?lang=ar&box_ID=' + data.ID">

                                    @{{ data.Ar_title }}
                            @endif
                        </a>
                    </div>
                </div>
            </div>
        </overlay>
    </card>




</template>

{{--  <script src="{{asset('Front/Js/jquery-3.6.0.min.js') }}"  type="text/javascript"  defer></script>  --}}
