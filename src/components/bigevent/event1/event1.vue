<template>
  <div class="event1">
    <div @click="backFun" class="back">
      <div>返回</div>
    </div>
    <div class="content">
      <div class="title">四川零忧实业有限公司成立</div>
      <div class="body">内容</div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    backFun() {
      this.$emit('backFun')
    }
  }
}
</script>
<style lang="scss" scoped>
@import './event1.scss';
</style>
