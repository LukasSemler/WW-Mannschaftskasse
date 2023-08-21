import { defineStore } from 'pinia';
import { ref } from 'vue';

export const useVuestore = defineStore('Vuestore', {
  state: () => ({
    count: 0,
    name: ref('Benni'),
  }),
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    increment() {
      this.count++;
    },
  },
});
