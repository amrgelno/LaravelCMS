
    <div class='topic-FRAME' v-for="(data,i) in topic" :key="i">

        <div class="img">
            <img :src="'Front/IMG/' + data.ImageName" class="img" />
        </div>

        <div class="text">


            @if (@$_GET['lang'] == 'en' or empty(@$_GET['lang']))
                <a :href="'?Topic_ID=' + data.id"> @{{ data.subject }} </a>
            @elseif($_GET['lang'] == 'Ar')
                <a :href="'?lang=ar&Topic_ID=' + data.id">
                    @{{ data.Ar_subject }} </a>
            @endif

            <br>
            <span>

                @if (@$_GET['lang'] == 'en' or empty(@$_GET['lang']))
                    @{{ data.content }}
                @elseif($_GET['lang'] == 'Ar')
                    @{{ data.Ar_content }}
                @endif


            </span>
        </div>




    </div>





