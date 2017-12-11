<template>
  <div class="event1">
    <div @click="backFun" class="back">
      <div>返回</div>
    </div>
    <div class="content">
      <div class="title">确立以汽车美容、保养、修理、洗车等业务为主，保险为辅的模式</div>
      <div class="body">
        要想零忧稳健快速发展，就要寻找精准客户，客户永远是关键，一定要在扎堆的竞争门店中争取到优质的客户。
      </div>
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