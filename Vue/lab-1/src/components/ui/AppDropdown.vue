<template>
  <div class="dropdown">
    <div :class="['changer', { active: isOpen }]"
      @click.stop="toggle"
    >{{ modelValue.name }}
    </div>

    <div v-if="isOpen" class="container-list">
      <div
        v-for="item in options"
        :key="item.code"
        @click="change(item)"
        class="item"
      >{{ item.name }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'app-dropdown',
  emits: ['update:modelValue', 'update:isOpen'],
  props: {
    options: {
      type: Array,
      required: true
    },
    modelValue: {
      type: Object,
      required: true
    },
    isOpen: {
      type: Boolean,
      default: false
    }
  },
  setup (props, { emit }) {
    function toggle () {
      emit('update:isOpen', !props.isOpen)
    }

    function change (item) {
      emit('update:modelValue', item)
      emit('update:isOpen', false)
    }

    return {
      toggle,
      change
    }
  }
}
</script>

<style scoped>
.dropdown {
  position: relative;
  width: 80px;
}

.changer {
  border: 1px solid #ccc;
  border-radius: 8px;
  padding: 10px;
  font-size: 16px;
  line-height: 1.2;
  cursor: pointer;
  background: #fff;
}
.changer:hover {
  border-color: #007BFF;
}
.changer.active {
  border-color: #007BFF;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.container-list {
  position: absolute;
  top: calc(100% + 4px);
  width: 100%;
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 8px;
  z-index: 10;
}

.item {
  padding: 6px 10px; 
  cursor: pointer;
}
.item:hover { 
  background: #e5e8f1;
}
</style>
