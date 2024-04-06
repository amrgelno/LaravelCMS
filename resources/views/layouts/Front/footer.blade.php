<footer class="footer"
    style="display: block; backdrop-filter: invert(1);  background: url(./Front/IMG/footer_background.png) center center / cover fixed; ">


    <div class="info" v-for="(data,i) in Maxcompanyid" :key="i">

        <div class="einfo">
            <div class="soicon"><img src="Front/IMG/ame.png" class="socicon"></a></div>
            <div class="email"><a :href="'mailto:' + data.Tele_Number">@{{ data.Email }} </a> </div>
        </div>


        <div class="einfo">
            <div class="soicon"><img src="Front/IMG/phone-icon-line-telephone-symbol-vector-21084486.png"
                    class="socicon"></a></div>
            <div class="mobile"><a
                    :href="'https://api.whatsapp.com/send?phone=' + data.Tele_Number">@{{ data.Tele_Number }}
                </a>
            </div>
        </div>

        <div class="einfo">
            <div class="soicon"><img src="Front/IMG/Address.png" class="socicon"></a></div>
            <div class="Address">@{{ data.country }} </div>
        </div>

    </div>

    <UL id="menu" v-if="Footersitemap == 'Active'" v-for="(data,i) in navNullfooter" :key="i">

        <li class="Link_M"><a :href="'index.php?MainM_ID:' + data.id"> @{{ data.sub1menu }}
            </a></li>
    </UL>

    <br /> <br />
    <br />
    <br /> <br />
    <br />
    <br /> <br />
    <br />
    <br /> <br />
    <br />

    <div class="copyright">
        <br />&nbsp; tiktuk_2023

        @if (auth::guard('admin')->check())
            <input type="color" name="Footercolor" class="hint--left" id='Footercolor' aria-label="Footercolor"
                v-model='Footercolor' onchange='changeFootercolor();'>
        @ENDIF
    </div>

    <div class="logo" v-for="(data,i) in Maxcompanyid" :key="i">

        <img :src="'Front/IMG/' + data.path_pic" class="logo" />

    </div>

    <div class="socialposition" v-for="(data,i) in social" :key="i">


        @if (auth::guard('admin')->check())
            <form action="{{ route('social.index') }}" method="get">
                @csrf
                @method('PUT')



                <INPUT TYPE='submit' name='Edit_social' title='Edit_social' class='insert'
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



            </form>
        @endif


        <div class="icon">

            <a :href="data.links">

                <img :src="'Front/IMG/' + data.social_icon" class="soc_icon"
                    style="background-attachment: scroll; filter: brightness(0) invert(1);" />

            </a>

        </div>

    </div>

</footer>
