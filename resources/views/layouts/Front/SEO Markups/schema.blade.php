<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [


        <template   v-for="(data,i) in box"   :key="i">


{
  "@type": "ListItem",
  "position": @{{data.ID}} ,
  "name": "Recipes",
  "item": "'https://@{{Domain_site}}?/Blog/box_ID=:' + data.ID"
},

</template>

{
  "@type": "ListItem",
  "position":'' ,
  "name": "Recipes",
  "item": "https://@{{Domain_site}}?"
}


        ]
    }
    </script>
