<template>
  <div class="wrapper">
    <label :for="id">{{ label }}</label>
    <input
      :id="id"
      type="number"
      :placeholder="placeholder"
      :value="modelValue"
      @input="$emit('update:modelValue', $event.target.value)"
      class="cutom-input"
    />
  </div>
</template>

<script>
export default {
  name: 'app-input',
  emits: ['update:modelValue'],
  props: {
    modelValue: {
      type: String,
      required: true
    },
    id: {
      type: String,
      required: true
    },
    label: {
      type: String,
      default: 'label'
    },
    placeholder: {
      type: String,
      default: 'placeholder'
    }
  }
}
</script>

<style scoped>
.wrapper {
  display: flex;
  flex-direction: column;
  gap: 2px;
  width: 100%;
}

label {
  font-size: 12px;
  color: #333;
}

.cutom-input {
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
  width: 100%;
}

.cutom-input:focus {
  border-color: #007BFF;
  outline: none;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>
