<template>
  <div class="news">
    <div class="title">新闻资讯</div>
    <div class="content" v-for="item in news">
      <div class="item" @click="itemClickFun(item.id)">
        <div class="newstitle">【新闻】{{ item.title }}</div>
        <div class="newscontent">{{ item.time }}</div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {

    data(){
      return{
        news:[{
          id:0,
          title:"38家险企二次商车费改条款获批 定价因子进一步细化",
          press:"证券时报",
          time:"2017年8月09日"
        }, {
          id:1,
          title:"车险二次费改 33家险企新条款获批",
          press:"北京商报",
          time:"2017年7月25日"
        }, {
          id:2,
          title:"车险手续费价格战升级",
          press:"北京商报",
          time:"2017年7月25日"
        },{
          id:3,
          title:"车险现场检查剑指高费用",
          press:"中国经济网",
          time:"2017年5月24日"
        }, {
          id:4,
          title:"停驶返钱，做移动互联时代的原生车险产品",
          press:"中国网",
          time:"2017年4月13日"
        }, {
          id:5,
          title:"存风险 按天买车险被监管",
          press:"北京商报",
          time:"2017年3月28日"
        }, {
          id:6,
          title:"安心保险按天买车险被监管 创新产品存风险",
          press:"北京商报",
          time:"2017年3月27日"
        }]
      }
    },
    methods:{
      itemClickFun(id){
        this.$emit('itemClickFun',id);
      }
    }
  }
</script>
<style lang="scss" scoped>
  @import './news.scss';
</style>
