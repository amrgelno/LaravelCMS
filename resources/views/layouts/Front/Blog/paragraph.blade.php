<div class="content" v-for="(data,i) in paragraph" :key="i">
    @if (@$_GET['lang'] == 'en' or empty(@$_GET['lang']))
        <p v-html='data.Paragraph'> </p>
    @elseif($_GET['lang'] == 'Ar')
        <p v-html='data.Ar_paragraph'> </p>
    @endif

</div>
