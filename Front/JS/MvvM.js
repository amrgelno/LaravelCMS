
    const page = window.location.search; 
    
     conset endpoint='/jasonlayoutfx';

    const domain = window.location.origin;
   
    const link= domain+endpoint+page;  

    

    new Vue({
        el: "#app",
        data: {
            "navID": "navID",
            "box_ID": "box_ID",
            "Topic_ID": "Topic_ID",
            "Footersitemap": "Footersitemap",
            "bgimage": "bgimage",
            "container": "container",
            "Breadcrumbs": "Breadcrumbs",
            "cat_type": "cat_type",
            "page_title": "page_title",
            "langsection": "langsection",
            "BSModel": "BSModel",
            "SearchBar": "SearchBar",
            "Domain_site": "Domain_site",
            "Microformats": "Microformats",
            "Keywords": [],
            "nav": [],
            "nav2": [],
            "nav_sub": [],
            "nav_subm": [],
            "navNullfooter": [],
            "topic": [],
            "paragraph": [],
            "static": [],
            "box": [],
            "member_pr": [],
            "cover": [],
            "slider": [],
            "sliderMin": [],
            "sliderMax": [],
            "social": [],
            "Maxcompanyid": [],
            "Imgpath": "Imgpath",
            "boxurl": "?box_ID=",
            "slide": 0,
            "sliding": null
        },
        methods: {
            getUser() {
                const URL = link;
                axios.
                get(URL).
                then(res => {
                    this.Imgpath = "./Front/IMG/",
                        this.bgimage = res.data.bgimage,
                        this.SearchBar = res.data.SearchBar,
                        this.container = res.data.container,
                        this.Microformats = res.data.Microformats,
                        this.Keywords = res.data.Keywords,
                        this.Domain_site = res.data.Domain_site,
                        this.Breadcrumbs = res.data.Breadcrumbs,
                        this.cat_type = res.data.cat_type,
                        this.page_title = res.data.page_title,
                        this.langsection = res.data.langsection,
                        this.BSModel = res.data.BSModel,
                        this.navNullfooter = res.data.navNullfooter,
                        this.nav = res.data.nav,
                        this.nav2 = res.data.nav2,
                        this.nav_sub = res.data.nav_sub,
                        this.nav_subm = res.data.nav_subm,
                        this.cover = res.data.cover,
                        this.slider = res.data.slider,
                        this.sliderMin = res.data.sliderMin,
                        this.sliderMax = res.data.sliderMax,
                        this.social = res.data.social,
                        this.member_pr = res.data.member_pr,
                        this.box = res.data.box,
                        this.paragraph = res.data.paragraph,
                        this.member_pr = res.data.member_pr,
                        this.topic = res.data.topic,
                        this.static = res.data.static,
                        this.Footersitemap = res.data.Footersitemap,
                        this.Maxcompanyid = res.data.Maxcompanyid;
                })
            },
            onSlideStart(slide) {
                this.sliding = true
            },
            onSlideEnd(slide) {
                this.sliding = false
            },
        },
        mounted() {
            this.getUser();

        },

    })
