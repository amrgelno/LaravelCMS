<template v-for="(data,i) in Keywords" :key="i">

    <title> @{{ data.title }} </title>
    <meta name="title" :content="data.title">
    <meta name="description" :content="data.description">
    <meta name="keywords" :content="data.Keyword">
    <meta name="author" :content="data.author">
    <!--Open Graph Protocol-->
    <meta property="og:type" content="website" />
    <meta property="og:title" :content="data.title" />
    <meta property="og:description" :content="data.Keyword" />
</template>

<html prefix="og: https://ogp.me/ns#">
<meta property="og:locale" content="ar_AR" />
<meta property="og:site_name" :content="Domain_site" />
<meta property="article:modified_time" content="2020-07-23T06:20:03+00:00" />
<meta property="og:image" content="  " />
<meta property="og:image:width" content="570" />
<meta property="og:image:height" content="380" />
<!--Twitter Cards-->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content=" " />
<!--meta tag (customize) -->
<meta name="robots" content="index, follow">
<meta name="language" content="Arabic">
<!--End meta tag (customize) -->
