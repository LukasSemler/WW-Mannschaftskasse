import { defineStore } from 'pinia';
import { ref } from 'vue';

export const wwStore = defineStore('WW-Store', {
  state: () => ({
    aktiverUser: ref(null),
  }),
  getters: {},
  actions: {},
});
