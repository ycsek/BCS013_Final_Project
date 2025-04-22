<template>
  <div class="rich-text">
    <div v-html="html"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  props: {
    html: {
      type: String,
      default: "",
    },
  },
};
</script>
<style lang="scss" >
.rich-text img {
    width: 100%;
    position: relative;
}
</style>
