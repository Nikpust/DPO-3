<template>
  <component :is="'Conversion'" />
</template>

<script>
import Conversion from './views/Conversion.vue'
export default {
  name: 'app',
  components: {
    Conversion
  }
}
</script>

<style scoped>
</style>
