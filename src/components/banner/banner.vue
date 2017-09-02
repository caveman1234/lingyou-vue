<template>
    <div class="banner">
        <div class="img"><img src="../../assets/banner.png" alt="img"></div>
        <div class="nav">
            <div class="left">
                <span>零优实业</span>
                <span>{{$route.params.title||title}}</span>
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
    }
}
</script>
<style lang="scss" scoped>
@import './banner.scss';
</style>

