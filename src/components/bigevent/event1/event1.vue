<template>
  <div class="event1">
    <div @click="backFun" class="back">
      <div>返回</div>
    </div>
    <div class="content">
      <div class="title">四川零忧实业有限公司成立</div>
      <div class="body">
        一直以来，零忧坚持引进.消化.吸收.创新.推广先进技术和优异管理模式，总结出实用详尽的解决方案！由于品牌源于专业，从而搭建了从线下门店到线上互联网相结合的经营模式，由线上全面的服务项目，再到落地门店完善的服务，形成了完整的汽车后市场服务体系的产业链。倡导以汽车美容、保养、修理、洗车等业务为主，保险为辅的模式，为有车的顾客开通了方便之门。在成都有着不少于100个汽车一站式服务的修理厂成为我们的合作伙伴，不管你开到哪里，哪里都有零忧！真正做到了有零忧，生活无忧！

      </div>
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
