<template>
    <div>
        <common title="首页">
            <div @click="func">home-page-click</div>
            <div id="msg">{{msg}}</div>
        </common>
    </div>
</template>
<script>
import common from '@/components/common/common';
export default {
    components: { common },
    data() {
        return {
            msg:'msg'
        }
    },
    methods:{
        func(){
            this.msg = "msg-changed";
            
            setTimeout(()=>console.log(msg.innerHTML),0)
        }
    }
}
</script>
<style lang="scss" scoped>
@import './home.scss';
</style>
