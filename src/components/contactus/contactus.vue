<template>
    <common title="联系我们">
        <div class="contactus">
            <div class="title">联系我们</div>
            <div class="container1">
                <div class="top">四川零忧实业有限公司</div>
                <div class="body">
                    <p>电话：400-870-8611</p>
                    <p>邮编：610000</p>
                    <p>地址：成都高新区剑南大道中段513号</p>
                    <p>网址：www.lingyoucx.com</p>
                </div>
            </div>
        </div>

    </common>
</template>
<script>
import common from '@/components/common/common';
export default {
    components: { common },
    data() {
        return {
            fileList: []
        }
    },
    methods: {
        
    },
    mounted() {

    }

}
</script>
<style lang="scss" scoped>
@import './contactus.scss';
</style>
