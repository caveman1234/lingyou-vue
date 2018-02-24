<template>
  <div class="event1">
    <div @click="backFun" class="back">
      <div>返回</div>
    </div>
    <div class="content">
      <div class="title">确立以洗车、美容为主，车险为辅的战略方针</div>
      <div class="body">内容2</div>
    </div>
  </div>
</template>
<script>
export default {
  methods:{
    backFun(){
      this.$emit('backFun')
    }
  }
}
</script>
<style lang="scss" scoped>
@import './event2.scss';
</style>