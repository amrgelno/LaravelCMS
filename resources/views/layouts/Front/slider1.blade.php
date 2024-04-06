    <!-- Use downloaded version of Bootstrap -->
    <section class="slider col-lg-12 col-xs-12 col-md-12 col-sm-12" v-for="(data,i) in  sliderMin" :key="i">

        <div class="sliderimg col-lg-12 col-xs-12 col-md-12 col-sm-12"><!--str slider img -->

            <div id="Carousel" class="carousel slide" data-ride="carousel">


                <ol class="carousel-indicators" style='display:block;'>

                    <li data-target="#carousel" v-for="(data,i) in  slider" :key="i"
                        data-bs-target="#carouselExampleCaptions" :data-slide-to="data.id - 1" class="active"
                        v-if ="data.id - 1  == 0 " aria-current="true">
                    </li>

                    <li data-target="#carousel" v-for="(data,i) in  slider" :key="i"
                        :data-slide-to="data.id - 1" v-if ="data.id - 1  != 0 " aria-current="true"></li>
                </ol>



                <div class="carousel-inner">

                    <div class="item active" v-for="(data,i) in  sliderMin" :key="i"
                        v-if="data.ImageName  != ' '  &&  data.ImageName  != Null ">

                        <div class ="slide1"><img :src="'Front/IMG/' + data.ImageName" loading='lazy' class="Image" />
                        </div>

                        <div class="carousel-caption">
                            <Font size='5px'> @{{ data.title }} </Font>
                        </div>
                    </div>


                    <div class="item" v-for="(data,i) in  sliderMax" :key="i"
                        v-if="data.ImageName  != ''  &&  data.ImageName  != Null ">
                        <div class="slide2"><img :src="'Front/IMG/' + data.ImageName" loading='fast' class="Image" />
                        </div>
                        <div class="carousel-caption">
                            <Font size='5px'> @{{ data.title }} </Font>
                        </div>
                    </div>

                </div>

                <!-- end  slider carousel inner -->

            </div>



        </div>

    </section>
    {{-- <script src="{{ asset('Front/JS/bootstrap.min.js') }}" type="text/javascript" defer></script> --}}
