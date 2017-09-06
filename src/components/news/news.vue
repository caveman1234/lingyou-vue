<template>
  <div>
    <common title="新闻资讯">
      <component :listdetailId="listdetailId" :is="comp" @itemClickFun="itemClickFun" @backFun="backFun"></component>
    </common>
  </div>
</template>
<script>
  import common from '@/components/common/common';
  import list from '@/components/news/list';
  import listitem from '@/components/news/listitem';
  export default {
    components: { common,list, listitem},
    data() {
      return {
        comp: list,
        listdetailId:""
      }
    },
    methods:{
      itemClickFun(index){
          this.listdetailId=index;
        this.comp = listitem;
      },
      backFun(){
        this.comp = list;
      }
    }
  }
</script>
