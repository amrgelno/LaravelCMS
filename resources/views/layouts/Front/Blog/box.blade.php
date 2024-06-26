@foreach ($box as $boxitem)


    @if (!empty($boxitem->cat_Name))

        <div class="headline col-sm-7 col-md-7  col-lg-7 ">
            <h1>
                <div class="clear"></div>{{ $boxitem->cat_Name }}
            </h1>



            @if (auth::guard('admin')->check())
                <form action="{{ route('box.index') }}" method="get">

                    @csrf

                    @method('PUT')

                    @if (isset($navID) or empty($navID))
                        @if (empty($navID))
                            <input type="hidden" name="MainM_ID" value="1" />
                        @else
                            <input type="hidden" name="MainM_ID" value="{{ $navID }}" />
                        @endif

                        <input type="hidden" name="page_id" value="nav_id" />
                    @elseif(isset($box_ID))
                        <input type="hidden" name="MainM_ID" value="{{ $box_ID }}" />
                        <input type="hidden" name="page_id" value="box_ID" />
                    @elseif(isset($Topic_ID))
                        <input type="hidden" name="MainM_ID" value="{{ $Topic_ID }}" />
                        <input type="hidden" name="page_id" value="Topic_ID" />
                    @endif


                    @if (isset($navID) or isset($box_ID) or isset($Topic_ID) or empty($navID))
                        <INPUT TYPE='submit' name='updateBox' title='Edit_categories' class='insert'
                            style="margin: 5% 33%;
    width: 22px;
    background-size: cover;
    background-repeat: no-repeat;
    /* content: 'ewrerer'; */
    border: unset;
    /* background: yellow; */
    background-position: center;
    background-image: url(Front/ICON/author.png);"
                            value />
                    @endif

                </form>
            @endif









        </div>
    @endif

@endforeach

@foreach ($box as $boxitem)
    <div class="FRAME" onmouseout="hidetitle{{ $boxitem->ID }}();">

        <div class="imgb{{ $boxitem->ID }}">

            <img src="Front/IMG/{{ $boxitem->ImageName }}" class="front"
                onmouseover="showtitle{{ $boxitem->ID }}();" />

            <div class="titleb{{ $boxitem->ID }}" onmouseover="showtitle{{ $boxitem->ID }}();">

                <a href="index.php?box_ID={{ $boxitem->ID }}" id='linker'>
                    @if (@$_GET['lang'] == 'en_gb' or empty($_GET['lang']))
                        {{ $boxitem->title }}
                    @elseif($_GET['lang'] == 'ar')
                        {{ $boxitem->Ar_title }}
                    @endif
                </a>




            </div>
        </div>
    </div>


    <script>
        function showtitle{{ $boxitem->ID }}() {

            $(".titleb{{ $boxitem->ID }}").css({
                animation: 'drive 1.8s infinite 0.7s ease-in',
                display: 'block',
                cursor: 'pointer'
            }, 2000)

        }


        function hidetitle{{ $boxitem->ID }}() {

            $(".titleb{{ $boxitem->ID }}").css({
                display: 'none'
            }, 2000)

        }
    </script>

    {{--  <script  type="text/javascript">

    $(document).ready(function(e) {
        $('.imgb{{$boxitem -> ID}}').hover(function(){
            $('.titleb{{$boxitem -> ID }}').fadeToggle();
            $('.titleb{{$boxitem -> ID }}').css({animation:'drive 2s  infinite 1s ease-out', },2000)
        });
    });
    </script>  --}}
@endforeach


{{--  <script src="{{asset('Front/Js/jquery-3.6.0.min.js') }}"  type="text/javascript"  defer></script>  --}}
