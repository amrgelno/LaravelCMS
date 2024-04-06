<section v-for="(data,i) in cover" :key="i" class="cover"
    :style="{ backgroundImage: 'url(' + Imgpath + data.Cover_Name + ')' }">

</section>
