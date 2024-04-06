<!--   Microformats tag   -->

<template v-if="Microformats == 'schemaorg'">


    <span v-for="(Maxid,i) in Maxcompanyid" :key="i">
        <div itemscope itemtype="http://schema.org/LocalBusiness" style='display:none;'>

            <h2><span itemprop="name">@{{ Maxid.Comp_Name }}</span></h2>
            <span itemprop="description">@{{ Maxid.WBDescription }}</span>
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <span itemprop="streetAddress">@{{ Maxid.Address }}</span>
                <span itemprop="postalCode">@{{ Maxid.postalCode }}</span>
                <span itemprop="addressLocality">@{{ Maxid.city }}</span>,
                <span itemprop="addressRegion">@{{ Maxid.country }}</span>
            </div>
            Phone: <span itemprop="telephone">@{{ Maxid.Tele_Number }}</span>
        </div>

        </div>

</template>

<template v-if="Microformats == 'vcard'">


    <div v-for="(Maxid,i) in Maxcompanyid" :key="i">

        <div class="vcard" style='display:none;'>

            <h2 class="fn org">@{{ Maxid.Comp_Name }}</h2>
            <div class="adr">
                <div class="street-address">@{{ Maxid.WBDescription }}</div>
                <span class="locality">@{{ Maxid.city }}</span>,
                <span class="region">@{{ Maxid.WBDescription }}</span>
                <span class="postal-code">@{{ Maxid.postalCode }}</span>
                <span class="country-name">@{{ Maxid.country }}</span>
            </div>
            <div class="tel">@{{ Maxid.Tele_Number }}</div>
        </div>


    </div>

</template>
