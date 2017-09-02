<template>
  <div>
    <div class="main">
      <VHeader></VHeader>
      <router-view></router-view>
    </div>
    
    
  </div>
</template>

<script>
import VHeader from '@/components/Header/Header';
export default {
  components: { VHeader },
  data() {
    return {

    }
  }
}
</script>

<style lang="scss" scoped>
@import './Main.scss';
</style>
