<article class="slider col-lg-12 col-xs-12 col-md-12 col-sm-12" style=" position: relative; min-height: 1px;">

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel"
        style="background:unset; height:unset;">



        {{-- <ol class="carousel-indicators" style='display:block;'>

            <li data-target="#carousel" v-for="(data,i) in  slider" :key="i"
                data-bs-target="#carouselExampleCaptions" :data-slide-to="data.id - 1" class="active"
                v-if ="data.id - 1  == 0 " aria-current="true">
            </li>

            <li data-target="#carousel" v-for="(data,i) in  slider" :key="i" :data-slide-to="data.id - 1"
                v-if ="data.id - 1  != 0 " aria-current="true"></li>
        </ol> --}}


        <div class=" carousel-inner   slides">

            <div class="carousel-item active " v-for="(data,i) in  sliderMin" :key="i"
                v-if="data.ImageName  != ' '  &&  data.ImageName  != Null ">

                <div class ="slide1"><img :src="'Front/IMG/' + data.ImageName" loading='lazy' class="Image" />
                </div>

                <div class="carousel-caption">
                    <Font size='5px'> @{{ data.title }} </Font>
                </div>
            </div>

            <div class="carousel-item " v-for="(data,i) in  sliderMax" :key="i"
                v-if="data.ImageName  != ''  &&  data.ImageName  != Null ">
                <div class="slide2"><img :src="'Front/IMG/' + data.ImageName" loading='fast' class="Image" />
                </div>
                <div class="carousel-caption">
                    <Font size='5px'> @{{ data.title }} </Font>
                </div>
            </div>

        </div>


        {{-- <div class="slidercarousel">

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <!-- <span class="carousel-control-prev-icon" aria-hidden="true"></span>  -->
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <!-- <span class="carousel-control-next-icon" aria-hidden="true"></span>  -->
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div> --}}
    </div>
    </div>

</article>
