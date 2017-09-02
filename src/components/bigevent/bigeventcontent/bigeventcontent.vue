<template>
  <div class="bigeventcontent">
      <div class="title">大记事</div>
      <div class="content">
          <div @click="itemClickFun(0)" class="item">
              <div class="time">2017.03.01</div>
              <div class="brief">四川零忧实业有限公司成立</div>
          </div>
          <div @click="itemClickFun(1)" class="item">
              <div class="time">2017.07.26</div>
              <div class="brief">确立以洗车、美容为主，车险为辅的战略方针</div>
          </div>
      </div>
  </div>
</template>
<script>
export default {
  data(){
      return{}
  },
  methods:{
      itemClickFun(index){
        this.$emit('itemClickFun',index);
      }
  }
}
</script>
<style lang="scss" scoped>
@import './bigeventcontent.scss';
</style>
