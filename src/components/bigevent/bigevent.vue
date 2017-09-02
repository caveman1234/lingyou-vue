<template>
  <div>
    <common>
      <component :is="comp" @itemClickFun="itemClickFun" @backFun="backFun"></component>
    </common>

  </div>
</template>
<script>
import common from '@/components/common/common';
import bigeventcontent from '@/components/bigevent/bigeventcontent/bigeventcontent';
import event1 from '@/components/bigevent/event1/event1';
import event2 from '@/components/bigevent/event2/event2';
let comboArr = [event1,event2];
export default {
  components: { common, bigeventcontent, event1, event2 },
  data() {
    return {
      comp: bigeventcontent
    }
  },
  methods:{
    itemClickFun(index){
      this.comp = comboArr[index];
    },
    backFun(){
      this.comp = bigeventcontent;
    }
  }
}
</script>
