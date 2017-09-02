<template>
  <div class="common">
    <banner :title="title"></banner>
    <div class="container">
      <div class="slot">
        <slot></slot>
      </div>
      <div class="right">
        <div class="joinus">
          <div class="left1">
            <div>JOIN US</div>
            <div>加入我们</div>
            <div>社会招聘/校园招聘</div>
          </div>
        </div>
        <div class="contactus">
          <div class="left1">
            <div>CONCERN US</div>
            <div>关注我们</div>
          </div>
          <div class="img">
            <img src="../../assets/weixin.png" alt="img">
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="footerLeft">
        <div class="content">
          COPYRIGHT 2017 ALL RIGHT RESERVED LINGYOU.COM 零忧实业
        </div>
      </div>
      <div class="footerRight">
        <div class="content">
          <span>联系零优</span>&nbsp/
          <span>举报投诉</span>&nbsp/
          <span>法律声明</span>
        </div>
      </div>
    </div>

  </div>
</template>
<script>
import banner from '@/components/banner/banner';
export default {
  props: ['title'],
  components: { banner },
  data() {
    return {}
  }
}
</script>
<style lang="scss" scoped>
@import './common.scss';
</style>

