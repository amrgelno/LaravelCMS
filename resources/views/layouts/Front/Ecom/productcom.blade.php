@if (auth::guard('member')->user())
    <template v-for="(data,i) in member_pr" :key="i">

        <div class='topic-FRAME'>

            <div class="img">

                <img :src="'Front/IMG/' + data.Image1" class="img" />

            </div>

            <div class="text">
                <a :href="'index.php?Topic_ID=' + data.ID">

                    @{{ data.product_Model }} </a>

                <br>
                <span v-html='data.product_Des '> </span>
                <br /> <br />

                <input type="hidden" name="IDf" id="IDf{{ auth::guard('member')->user()->id }}"
                    value="{{ auth::guard('member')->user()->id }}" />


                <input type="hidden" name="Off_id" :value="data.id" :id="'Off_id' + data.id" />

                <input type="hidden" name="IDm" id="IDm39" value="0" />

                <button name="submit" type="button" :id="'btfx' + data.id" :onclick="'Delfav' + data.id + '();'" />
                Remove
                from favorite
                </button>

                <button type="button" id="btmx" :onclick="'Addfav' + data.id + '();'" />
                Add to favorites</button>


            </div>


        </div>




    </template>


    <Div id='script'>
        @include('layouts.Front.Ecom.productcomjs')
    </div>
@endif
