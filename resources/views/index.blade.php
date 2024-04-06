@include('layouts.Front.headtag')


<body style="background: url(./Front/IMG/Asphalltbg.png) center center / cover fixed; ">

    <app id="app" v-cloak>

        <div :class="container">

            <div class="min-container">
                <div class="row">

                    @include('layouts.Front.loadingsc')

                    <div v-if="BSModel=='E-commerce' ">

                        @include('layouts.Front.Ecom.navcom')
                    </div>

                    <div v-else-if="BSModel=='landing_page'">

                        @include('layouts.Front.landingpage.nav')

                    </div>

                    <div v-else-if="BSModel=='Blog with member'">
                        @include('layouts.Front.BlogMember.nav')
                    </div>

                    <div v-else>

                        @include('layouts.Front.Blog.nav')

                    </div>



                    @if (isset($_GET['search_bt']))
                        <br /> <br />

                        <div v-if="Breadcrumbs=='Active' ">

                            @include('layouts.Front.SEO Markups.breadcrumb')

                        </div>


                        <div v-if="BSModel=='E-commerce' ">

                            @include('layouts.Front.Ecom.searchbarresults')

                            <div v-else>


                                @include('layouts.Front.Blog.searchbarresults')


                            </div>
                        @else
                            <div class="clear"> </div>


                            <br />
                            <br />


                            @include('layouts.Front.slider')


                            @include('layouts.Front.cover')


                            <!--End  header component -->

                            <section class="fultopic" style='background:unset;'>

                                <div v-if="Breadcrumbs=='Active' ">

                                    <!--  breadcrumb  component -->

                                    @include('layouts.Front.SEO Markups.breadcrumb')


                                    <!-- End  breadcrumb  component -->


                                </div>


                                <!--  Content   Component-->
                                <div v-if="BSModel=='E-commerce' ">


                                    @include('layouts.Front.Ecom.ECOM')

                                    <article class="paragraph">@include('layouts.Front.Blog.paragraph')</article>
                                    <article class="topic">@include('layouts.Front.Blog.topic')</article>
                                    <article class="static_box">@include('layouts.Front.Blog.static')</article>
                                    <article class="categories" style="opacity: 50;">@include('layouts.Front.Blog.box2')
                                    </article>

                                </div>


                                <div v-else>

                                    <article class="paragraph">@include('layouts.Front.Blog.paragraph')</article>
                                    <article class="topic">@include('layouts.Front.Blog.topic')</article>
                                    <article class="static_box">@include('layouts.Front.Blog.static')</article>
                                    <article class="categories" style="opacity: 50;">@include('layouts.Front.Blog.box2')
                                    </article>

                                </div>


                            </section>


                            <!--  End  Content   Component-->
                    @endif
                    <!-- end favicon  and  apple touch   -->


                    <!--  Footer Component-->



                    @include('layouts.Front.footer')


                </div>
            </div>

        </div>
    </app>

</body>


</html>




@include('MVVMVue')
