@include('layouts.FrontCDN.framework.vue.headtag')

<style>
    :root {
        --bgimage: Front/IMG/
    }

    [v-cloak]>* {

        display: none;

    }
</style>


<body>

    <app id="app" v-cloak>

        <div :class="container">

            @include('layouts.FrontCDN.framework.vue.loadingsc')

            <!-- Nav component -->

            <div v-if="BSModel=='E-commerce' ">

                @include('layouts.FrontCDN.framework.vue.Ecom.navcom')

            </div>

            <!--End  Nav component -->

            <!-- header component -->

            @if (isset($_GET['search_bt']))
                <br /> <br />




                <div v-if="Breadcrumbs=='Active' ">

                    @include('layouts.FrontCDN.framework.vue.SEO Markups.breadcrumb')


                </div>


                <div v-if="BSModel=='E-commerce' ">

                    @include('layouts.FrontCDN.framework.vue.Ecom.searchbarresults')

                    <div v-else>
                        @include('layouts.FrontCDN.framework.vue.Blog.searchbarresults')
                    </div>
                @else
                    <div class="clear"> </div>


                    <br />
                    <br />


                    @include('layouts.FrontCDN.framework.vue.slider')

                    @include('layouts.FrontCDN.framework.vue.cover')


                    <!--End  header component -->

                    <section class="fultopic" style='background:unset;'>

                        <div v-if="Breadcrumbs=='Active' ">

                            <!--  breadcrumb  component -->

                            @include('layouts.FrontCDN.framework.vue.SEO Markups.breadcrumb')

                            <!-- End  breadcrumb  component -->


                        </div>


                        <!--  Content   Component-->
                        <div v-if="BSModel=='E-commerce' ">


                            @include('layouts.FrontCDN.framework.vue.Ecom.ECOM')

                            <article class="paragraph">@include('layouts.FrontCDN.framework.vue.Blog.paragraph')</article>
                            <article class="topic">@include('layouts.FrontCDN.framework.vue.Blog.topic')</article>
                            <article class="static_box">@include('layouts.FrontCDN.framework.vue.Blog.static')</article>
                            <article class="categories" style="opacity: 50;">@include('layouts.FrontCDN.framework.vue.Blog.box2')</article>

                        </div>


                        <div v-else>

                            <article class="paragraph">@include('layouts.FrontCDN.framework.vue.Blog.paragraph')</article>
                            <article class="topic">@include('layouts.FrontCDN.framework.vue.Blog.topic')</article>
                            <article class="static_box">@include('layouts.FrontCDN.framework.vue.Blog.static')</article>
                            <article class="categories" style="opacity: 50;">@include('layouts.FrontCDN.framework.vue.Blog.box2')</article>

                        </div>




                        <!--  End  Content   Component-->
            @endif
            <!-- end favicon  and  apple touch   -->


            <!--  Footer Component-->



            <div class="clear"></div>
            @include('layouts.FrontCDN.framework.vue.footer')

        </div>

        <!--  End  Footer  Component-->




    </app>


</body>





</html>




@include('MVVMVue')
