<template>
    <div class="banner">
        <div class="img"><img src="../../assets/banner.png" alt="img"></div>
        <div class="nav">
            <div class="left">
                <span>零忧实业</span>
                <span @click="clickFun">{{$route.params.title||title}}</span>
            </div>
            <div class="right">
                <span>公司简介</span>
                <span>大事记</span>
                <span>公司荣誉</span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: ["title"],
    data() {
        return {}
    },
    methods: {
        clickFun() {
            let name = this.$route.name;
            let title = this.$route.params.title;
            // this.$router.push({ name: name, params: { title: title } });
            console.log('banner-',name,title);
        }
    }
}
</script>
<style lang="scss" scoped>
@import './banner.scss';
</style>

