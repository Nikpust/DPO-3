<template>
  <div class="container" @click="closeDropdown">
    <h1 class="title">Конвертер веса</h1>

    <div class="row">
      <app-input
        id="1"
        label="Первый параметр"
        placeholder="Введите значение"
        v-model="firstInput"
      />
      <app-dropdown
        :options="options"
        v-model="firstSelect"
        v-model:isOpen="isOpenF"
      />
    </div>

    <div class="row">
      <app-input
        id="2"
        label="Второй параметр"
        placeholder="Введите значение"
        v-model="secondInput"
      />
      <app-dropdown
        :options="options"
        v-model="secondSelect"
        v-model:isOpen="isOpenS"
      />
    </div>
  </div>
</template>

<script>
import AppInput from '../components/ui/AppInput.vue'
import AppDropdown from '../components/ui/AppDropdown.vue'
import { ref, watch } from 'vue'
export default {
  setup () {
    const isOpenF = ref(false)
    const isOpenS = ref(false)

    const firstInput = ref('')
    const secondInput = ref('')

    const options = [
      { code: 'g',  name: 'г',    factor: 1 },
      { code: 'kg', name: 'кг',   factor: 1000 },
      { code: 't',  name: 'тн',   factor: 1000000 },
      { code: 'lb', name: 'ф',    factor: 453.5924 },
      { code: 'oz', name: 'унц',  factor: 28.3495 }
    ]

    const firstSelect = ref(options[0])
    const secondSelect = ref(options[0])

    watch ([firstInput, firstSelect, secondSelect], ([newVal, s1, s2]) => {
      if (newVal === '') {
        secondInput.value = ''
        return
      }
      secondInput.value = (newVal * s1.factor / s2.factor).toString()
    })

    watch ([secondInput, firstSelect, secondSelect], ([newVal, s1, s2]) => {
      if (newVal === '') {
        firstInput.value = ''
        return
      }
      firstInput.value = (newVal * s2.factor / s1.factor).toString()
    })

    function closeDropdown () {
      isOpenF.value = false
      isOpenS.value = false
    }

    return {
      firstInput,
      secondInput,
      firstSelect,
      secondSelect,
      options,
      isOpenF,
      isOpenS,
      closeDropdown
    }
  },
  components: {
    AppInput,
    AppDropdown
  }
}
</script>

<style scoped>
.container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  display: flex;
  flex-direction: column;
  gap: 24px;
  padding: 32px;
  box-shadow: 0 2px 8px rgba(0, 0 , 0, 0.1);
  border-radius: 16px;
  min-width: 550px;
}

.title {
  white-space: nowrap;
}

.row {
  display: flex;
  align-items: flex-end;
  gap: 8px;
  width: 100%;
}
</style>
