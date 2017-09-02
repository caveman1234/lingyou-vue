<template>
  <div>
    <common title="关于我们">
      <div>
        <div class="content">
          <div class="head">
            introduction
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
