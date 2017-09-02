<template>
  <div>
    <common title="关于我们">
      <div class="introduction">
        <div class="title">公司简介</div>
        <div class="content">
          <div class="item1">
            <p>
              四川零忧实业股份有限公司，成立于2017年3月，注册资金5000万元，总部位于四川成都。拟在全国20个
              省市自治州成立分公司，全力打造新理念的后车市场+超市购物+售后服务。凭借精湛专业的服务，赢得了客
              户的信任。努力打造成为四川乃至全国最完善的汽车服务商。
            </p>
          </div>
          <div class="item2">
            <p>
              零忧实业从成立之初坚持以客户为向导，秉承“以客户为生存之源，以服务为发展之本”的经营理念，依靠严格的规章
              制度和现代化管理，不断追求自我超越与突破，坚持互惠互利，实现共赢的原则，以高品质的服务，绝对的信誉为
              宗旨，通过专业化的售后服务等技术为会员爱车提供全方位的安全保障。
            </p>
          </div>
          <div class="item3">
            <p> 零忧经营理念----客户至上，服务周到</p>
            <p><span>.</span>零忧企业对服务标准卓越性的追求永无止境；</p>
            <p><span>.</span>零忧人对人生目标卓越性的追求永无止境；</p>
            <p><span>.</span>零忧产业的发展空间是无限的；</p>
            <p><span>.</span>零忧企业的经营潜力是无限的；</p>
            <p><span>.</span>零忧人的创造力是无限的。</p>
            <p>零忧愿景----让天空更蓝、世界更绿、生活更美好！</p>
            <p>零忧使命----用卓越的产品和服务为客户创造更高的价值。</p>
            <p>零忧价值观----以人为本、至诚守信、成就客户、回馈社会。</p>
            <p>
              零忧战略----老产业升级，新产业科学布局，规模化发展，国际化经营。在多元化稳健发展的前提下
              实施由大做强的发展战略。
            </p>
          </div>
        </div>
      </div>
    </common>
  </div>
</template>
<script>
import common from '@/components/common/common';
export default {
  components: { common },
  data() {
    return {

    }
  },
  mounted() {
    window.introduction = this;
  }
}
</script>
<style lang="scss" scoped>
@import './introduction.scss';
</style>
