<template>
  <div class="min-h-full">
    <Disclosure as="nav" class="bg-wwGreen" v-slot="{ open }">
      <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-20 items-center justify-between">
          <div class="flex items-center">
            <div class="flex-shrink-0">
              <img class="block h-16 w-auto lg:hidden" src="/logo1.png" alt="Westwien Logo" />
              <img class="hidden h-16 w-auto lg:block" src="/logo1.png" alt="Westwien Logo" />
            </div>
            <div class="hidden md:block">
              <div class="ml-10 flex items-baseline space-x-4">
                <a
                  v-for="item in navigation"
                  :key="item.name"
                  @click="router.push(item.path)"
                  :class="[
                    item.current
                      ? 'bg-wwDarkGreen text-white'
                      : 'text-white hover:bg-wwLightGreen hover:bg-opacity-75',
                    'rounded-md px-3 py-2 text-sm font-medium',
                  ]"
                  :aria-current="item.current ? 'page' : undefined"
                  >{{ item.name }}</a
                >
              </div>
            </div>
          </div>
          <div class="hidden md:block">
            <div class="ml-4 flex items-center md:ml-6">
              <!-- Profile dropdown -->
              <Menu as="div" class="relative ml-3" v-if="store.getAktiverUser">
                <div>
                  <MenuButton
                    class="relative flex max-w-xs items-center rounded-full bg-wwGreen text-sm text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-wwDarkGreen"
                  >
                    <span class="absolute -inset-1.5" />
                    <span class="sr-only">Open user menu</span>
                    <img
                      class="h-8 w-8 rounded-full"
                      :src="store.getAktiverUser.profilbild_url"
                      alt=""
                    />
                  </MenuButton>
                </div>
                <transition
                  enter-active-class="transition ease-out duration-100"
                  enter-from-class="transform opacity-0 scale-95"
                  enter-to-class="transform opacity-100 scale-100"
                  leave-active-class="transition ease-in duration-75"
                  leave-from-class="transform opacity-100 scale-100"
                  leave-to-class="transform opacity-0 scale-95"
                >
                  <MenuItems
                    class="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
                  >
                    <MenuItem
                      v-for="item in userNavigation"
                      @click="store.deleteAktivenUser"
                      :key="item.name"
                      v-slot="{ active }"
                    >
                      <a
                        :class="[
                          active ? 'bg-gray-100' : '',
                          'block px-4 py-2 text-sm text-gray-700',
                        ]"
                        >{{ item.name }}</a
                      >
                    </MenuItem>
                  </MenuItems>
                </transition>
              </Menu>
              <button
                type="button"
                class="rounded-md bg-wwGray px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkGray"
                v-else
                @click="router.push('/login')"
              >
                Login
              </button>
            </div>
          </div>
          <div class="-mr-2 flex md:hidden">
            <!-- Mobile menu button -->
            <DisclosureButton
              class="relative inline-flex items-center justify-center rounded-md bg-wwGreen p-2 text-indigo-200 hover:bg-wwLightGreen hover:bg-opacity-75 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-wwDarkGreen"
            >
              <span class="absolute -inset-0.5" />
              <span class="sr-only">Open main menu</span>
              <Bars3Icon v-if="!open" class="block h-6 w-6 text-wwGray" aria-hidden="true" />
              <XMarkIcon v-else class="block h-6 w-6 text-wwGray" aria-hidden="true" />
            </DisclosureButton>
          </div>
        </div>
      </div>

      <DisclosurePanel class="md:hidden">
        <div class="space-y-1 px-2 pb-3 pt-2 sm:px-3">
          <DisclosureButton
            v-for="item in navigation"
            :key="item.name"
            as="a"
            @click="router.push(item.path)"
            :class="[
              item.current
                ? 'bg-wwDarkGreen text-white'
                : 'text-white hover:bg-wwLightGreen hover:bg-opacity-75',
              'block rounded-md px-3 py-2 text-base font-medium',
            ]"
            :aria-current="item.current ? 'page' : undefined"
            >{{ item.name }}</DisclosureButton
          >
        </div>
        <div class="border-t border-wwDarkGreen pb-3 pt-4" v-if="store.getAktiverUser">
          <div class="flex items-center px-5">
            <div class="flex-shrink-0">
              <img
                class="h-10 w-10 rounded-full"
                :src="store.getAktiverUser.profilbild_url"
                alt=""
              />
            </div>
            <div class="ml-3">
              <div class="text-base font-medium text-white">
                {{ store.getAktiverUser.vorname }} {{ store.getAktiverUser.nachname }}
              </div>
            </div>
          </div>
          <div class="mt-3 space-y-1 px-2">
            <DisclosureButton
              v-for="item in userNavigation"
              :key="item.name"
              as="a"
              @click="store.deleteAktivenUser"
              class="block rounded-md px-3 py-2 text-base font-medium text-white hover:bg-wwLightGreen hover:bg-opacity-75"
              >{{ item.name }}</DisclosureButton
            >
          </div>
        </div>
        <button
          type="button"
          class="rounded-md bg-wwGray px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkGray m-5"
          v-else
          @click="router.push('/login')"
        >
          Login
        </button>
      </DisclosurePanel>
    </Disclosure>

    <header class="bg-white shadow">
      <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8 flex justify-between">
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">
          Statistik pro Spieler
        </h1>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
        <div>
          <h3 class="text-xl font-semibold leading-6 text-gray-900 ml-2">Total</h3>
          <div class="flex flex-row justify-center w-full mb-12">
            <dl class="mt-5 grid grid-cols-1 sm:grid-cols-1 lg:grid-cols-2">
              <div
                v-for="item in statsType"
                :key="item.id"
                class="relative overflow-hidden rounded-lg bg-white px-4 pb-1 pt-5 shadow sm:px-6 sm:pt-6 mx-12 mt-3"
              >
                <dt>
                  <div class="absolute rounded-md bg-wwGreen p-3">
                    <component :is="item.icon" class="h-6 w-6 text-white" aria-hidden="true" />
                  </div>
                  <p class="ml-16 truncate text-sm font-medium text-gray-500">{{ item.name }}</p>
                </dt>
                <dd class="ml-16 flex items-baseline pb-6 sm:pb-7">
                  <p class="text-2xl font-semibold text-gray-900">{{ item.stat }}</p>
                </dd>
              </div>
            </dl>
          </div>
          <hr />
          <h3 class="text-xl font-semibold leading-6 text-gray-900 ml-2 mt-5">Summe</h3>
          <div class="flex flex-row justify-center w-full mb-12">
            <dl class="mt-5 grid grid-cols-1 gap-5 sm:grid-cols-1 lg:grid-cols-2">
              <div
                v-for="item in statsSumType"
                :key="item.id"
                class="relative overflow-hidden rounded-lg bg-white px-4 pb-1 pt-5 shadow sm:px-6 sm:pt-6 mx-12"
              >
                <dt>
                  <div class="absolute rounded-md bg-wwGreen p-3">
                    <component :is="item.icon" class="h-6 w-6 text-white" aria-hidden="true" />
                  </div>
                  <p class="ml-16 truncate text-sm font-medium text-gray-500">{{ item.name }}</p>
                </dt>
                <dd class="ml-16 flex items-baseline pb-6 sm:pb-7">
                  <p class="text-2xl font-semibold text-gray-900">{{ item.stat }}€</p>
                </dd>
              </div>
            </dl>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script setup>
import axios from 'axios';
import {
  Disclosure,
  DisclosureButton,
  DisclosurePanel,
  Menu,
  MenuButton,
  MenuItem,
  MenuItems,
} from '@headlessui/vue';
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import {
  CreditCardIcon,
  CurrencyEuroIcon,
  XCircleIcon,
  FunnelIcon,
} from '@heroicons/vue/24/outline';
import { reactive, onMounted, ref } from 'vue';

import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';

const router = useRouter();
const store = wwStore();
const playerID = router.currentRoute.value.params.id;

const statsType = reactive([
  {
    id: 1,
    name: 'Anzahl Überwiesen',
    stat: '0',
    icon: CreditCardIcon,
  },
  {
    id: 2,
    name: 'Anzahl Bar bekommen',
    stat: '0',
    icon: CurrencyEuroIcon,
  },
  {
    id: 3,
    name: 'Offen',
    stat: '0',
    icon: XCircleIcon,
  },
  {
    id: 3,
    name: 'Total',
    stat: '0',
    icon: FunnelIcon,
  },
]);

const statsSumType = reactive([
  {
    id: 1,
    name: 'Summe Überwiesen',
    stat: '0',
    icon: CreditCardIcon,
  },
  {
    id: 2,
    name: 'Summe Bar bekommen',
    stat: '0',
    icon: CurrencyEuroIcon,
  },
]);

onMounted(async () => {
  const { data } = await axios.get(`/paymentTypePlayer/${playerID}`);
  console.log(data);
  statsType[0].stat = data[0].karte;
  statsType[1].stat = data[0].barzahlung;
  statsType[2].stat = data[0].offen;
  statsType[3].stat = data[0].total;

  const { data: data2 } = await axios.get(`/sumTypePlayer/${playerID}`);
  statsSumType[0].stat = data2[0].karte;
  statsSumType[1].stat = data2[0].barzahlung;
});

const navigation = [
  { name: 'Home', path: '/', current: false },
  { name: 'Regeln', path: '/rules', current: false },
  { name: 'Statistik', path: '/stats', current: true },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];
</script>
