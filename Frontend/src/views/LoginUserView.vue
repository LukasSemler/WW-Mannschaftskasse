<template>
  <div class="flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-sm">
      <img class="mx-auto h-24 w-auto" src="/logo1.png" alt="Handball Westwien" />
      <h2 class="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">
        Anmelden
      </h2>
    </div>

    <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
      <form class="space-y-6" action="#" method="POST">
        <div>
          <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email</label>
          <div class="mt-2">
            <input
              v-model="state.email"
              id="email"
              name="email"
              type="email"
              autocomplete="email"
              class="pl-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
            />
          </div>
        </div>

        <div>
          <div class="flex items-center justify-between">
            <label for="password" class="block text-sm font-medium leading-6 text-gray-900"
              >Passwort</label
            >
          </div>
          <div class="mt-2">
            <input
              v-model="state.password"
              id="password"
              name="password"
              type="password"
              autocomplete="current-password"
              class="pl-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
            />
          </div>
        </div>

        <div>
          <button
            @click="signin"
            type="submit"
            class="flex w-full justify-center rounded-md bg-wwGreen px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen"
          >
            Sign in
          </button>
        </div>
      </form>
      <button
        @click="router.go(-1)"
        class="mt-3 flex w-full justify-center rounded-md bg-wwGray px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-wwDarkGray focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen"
      >
        Back
      </button>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue';
import { useRouter } from 'vue-router';
import axios from 'axios';
import { wwStore } from '../store/wwStore.js';

const router = useRouter();
const store = wwStore();
const state = reactive({
  email: '',
  password: '',
});

async function signin(e) {
  e.preventDefault();
  if (
    state.email !== '' &&
    state.password !== '' &&
    state.email.length > 0 &&
    state.password.length > 0
  ) {
    const { data } = await axios.post('/login', {
      email: state.email,
      password: state.password,
    });

    if (data) {
      store.setAktivenUser(data);
      console.log(data);
      router.push('/');
    } else {
      console.log('Error');
    }
  } else {
    console.log('Error');
  }
}
</script>
