<template>
  <TransitionRoot as="template" :show="showModalAbzug">
    <Dialog as="div" class="relative z-10" @close="showModalAbzug = true">
      <TransitionChild
        as="template"
        enter="ease-out duration-300"
        enter-from="opacity-0"
        enter-to="opacity-100"
        leave="ease-in duration-200"
        leave-from="opacity-100"
        leave-to="opacity-0"
      >
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
      </TransitionChild>

      <div class="fixed inset-0 z-10 overflow-y-auto">
        <div
          class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0"
        >
          <TransitionChild
            as="template"
            enter="ease-out duration-300"
            enter-from="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
            enter-to="opacity-100 translate-y-0 sm:scale-100"
            leave="ease-in duration-200"
            leave-from="opacity-100 translate-y-0 sm:scale-100"
            leave-to="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
          >
            <DialogPanel
              class="relative transform overflow-hidden rounded-lg bg-white px-4 pb-4 pt-5 text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-lg sm:p-6"
            >
              <div>
                <div class="text-center sm:mt-5">
                  <DialogTitle as="h1" class="font-semibold leading-6 text-gray-900 text-xl mb-5"
                    >Neue Ausgabe</DialogTitle
                  >
                  <div class="mt-2 text-left">
                    <label
                      for="price"
                      class="block text-sm font-medium leading-6 text-gray-900 mb-2"
                      >Verwendungszweck</label
                    >
                    <input
                      v-model="state.grund"
                      type="text"
                      name="grund"
                      id="grund"
                      class="block w-full rounded-md border-0 py-1.5 pl-3 pr-12 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
                      placeholder="Verwendungszweck"
                    />

                    <div class="mt-3">
                      <label for="price" class="block text-sm font-medium leading-6 text-gray-900"
                        >Preis</label
                      >
                      <div class="relative mt-2 rounded-md shadow-sm">
                        <div
                          class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3"
                        >
                          <span class="text-gray-500 sm:text-sm">€</span>
                        </div>
                        <input
                          autocomplete="off"
                          v-model="state.price"
                          type="text"
                          name="price"
                          id="price"
                          class="block w-full rounded-md border-0 py-1.5 pl-7 pr-12 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
                          placeholder="0.00"
                          aria-describedby="price-currency"
                        />
                        <div
                          class="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-3"
                        >
                          <span class="text-gray-500 sm:text-sm" id="price-currency">EUR</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mt-5 sm:mt-6 sm:grid sm:grid-flow-row-dense sm:grid-cols-2 sm:gap-3">
                <button
                  type="button"
                  class="inline-flex w-full justify-center rounded-md bg-wwGreen px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen sm:col-start-2"
                  @click="addAusgabeDB"
                >
                  Hinzufügen
                </button>
                <button
                  type="button"
                  class="mt-3 inline-flex w-full justify-center rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50 sm:col-start-1 sm:mt-0"
                  @click="hideModal"
                  ref="cancelButtonRef"
                >
                  Cancel
                </button>
              </div>
            </DialogPanel>
          </TransitionChild>
        </div>
      </div>
    </Dialog>
  </TransitionRoot>

  <TransitionRoot as="template" :show="showBezahlt">
    <Dialog as="div" class="relative z-10" @close="showBezahlt = false">
      <TransitionChild
        as="template"
        enter="ease-out duration-300"
        enter-from="opacity-0"
        enter-to="opacity-100"
        leave="ease-in duration-200"
        leave-from="opacity-100"
        leave-to="opacity-0"
      >
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
      </TransitionChild>

      <div class="fixed inset-0 z-10 overflow-y-auto">
        <div
          class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0"
        >
          <TransitionChild
            as="template"
            enter="ease-out duration-300"
            enter-from="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
            enter-to="opacity-100 translate-y-0 sm:scale-100"
            leave="ease-in duration-200"
            leave-from="opacity-100 translate-y-0 sm:scale-100"
            leave-to="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
          >
            <DialogPanel
              class="relative transform overflow-hidden rounded-lg bg-white px-4 pb-4 pt-5 text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-lg sm:p-6"
            >
              <div>
                <div
                  class="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-green-100"
                >
                  <CheckIcon class="h-6 w-6 text-green-600" aria-hidden="true" />
                </div>
                <div class="mt-3 text-center sm:mt-5">
                  <DialogTitle as="h3" class="text-base font-semibold leading-6 text-gray-900"
                    >Strafe bezahlt</DialogTitle
                  >
                  <div class="mt-2">
                    <p class="text-sm text-gray-500">Wie hat der Spieler die Strafe bezahlt</p>
                  </div>
                </div>
              </div>
              <div class="mt-5 sm:mt-6 sm:grid sm:grid-flow-row-dense sm:grid-cols-2 sm:gap-3">
                <button
                  type="button"
                  class="inline-flex w-full justify-center rounded-md bg-wwGreen px-3 py-5 text-lg font-semibold text-white shadow-sm hover:bg-wwDarkGreen sm:col-start-2"
                  @click="bezahlt('bar')"
                >
                  <CurrencyEuroIcon class="-ml-0.5 h-7 w-7 mr-2" aria-hidden="true" />
                  Bar
                </button>
                <button
                  type="button"
                  class="mt-3 inline-flex w-full justify-center rounded-md bg-wwGreen px-3 py-5 text-lg font-semibold text-white shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-wwDarkGreen sm:col-start-1 sm:mt-0"
                  @click="bezahlt('karte')"
                  ref="cancelButtonRef"
                >
                  <CreditCardIcon class="-ml-0.5 h-7 w-7 mr-2" aria-hidden="true" />
                  Karte
                </button>
              </div>
            </DialogPanel>
          </TransitionChild>
        </div>
      </div>
    </Dialog>
  </TransitionRoot>

  <!--Navbar-->
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
                    class="relative flex items-center rounded-full bg-wwGreen text-sm text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-wwDarkGreen"
                  >
                    <span class="absolute -inset-1.5" />
                    <span class="sr-only">Open user menu</span>
                    <img
                      class="h-8 w-8 rounded-full"
                      alt="Profilbild"
                      :src="store.getAktiverUser.profilbild_url"
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

      <!--Mobile-Menu-->
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
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">Home</h1>
        <div class="row flex-row">
          <button
            v-if="store.getAktiverUser"
            @click="router.push('/addAmount')"
            type="button"
            class="mr-3 rounded-full bg-wwGreen p-2 text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwDarkGreen"
          >
            <PlusIcon class="h-5 w-5" aria-hidden="true" />
          </button>
          <button
            v-if="store.getAktiverUser"
            @click="showModalAbzug = true"
            type="button"
            class="rounded-full bg-wwRed p-2 text-white shadow-sm hover:bg-wwDarkRed focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwDarkGreen"
          >
            <MinusIcon class="h-5 w-5" aria-hidden="true" />
          </button>
        </div>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <!-- Head -->
        <h4 class="text-center mt-5 text-gray-500">Aktueller Kassenstand:</h4>
        <h1 class="text-center text-4xl font-bold mt-2 mb-5 text-gray-900">
          {{ Number(sum).toFixed(2) }}€
        </h1>
        <hr />
        <!-- Body -->
        <h2 class="text-lg font-bold mt-5 mx-3">Offene Beträge:</h2>
        <ul
          role="list"
          class="divide-y divide-gray-100"
          v-if="openAmounts.filter((elem) => elem.bezahlt === false).length > 0"
        >
          <li
            v-for="amount in openAmounts.filter((elem) => elem.bezahlt === false)"
            :key="amount.id"
            class="flex gap-x-4 py-5"
          >
            <img
              class="h-12 w-12 flex-none rounded-full bg-gray-50 ml-2"
              :src="amount.profilbild_url"
              alt=""
            />
            <div class="flex-auto">
              <div class="flex items-baseline justify-between gap-x-4">
                <div class="flex">
                  <StarIcon
                    class="h-5 text-yellow-400"
                    v-if="amount.nachname == 'Wiltschko'"
                  ></StarIcon>
                  <p
                    :class="[
                      amount.nachname == 'Wiltschko' ? 'text-yellow-500' : 'text-gray-900',
                      'texttext-sm font-semibold leading-6',
                    ]"
                  >
                    {{ amount.vorname }}
                    {{ amount.nachname }}
                    <span class="font-bold mr-2 text-gray-900"
                      >{{ Number(amount.betrag).toFixed(2) }}€</span
                    >
                    <span
                      class="text-red-600 bg-red-50 ring-red-600/20 rounded-md whitespace-nowrap mt-0.5 px-1.5 py-0.5 text-xs font-medium ring-1 ring-inset ml-3'"
                    >
                      Offen
                    </span>
                  </p>
                </div>

                <div class="flex flex-row">
                  <button
                    type="button"
                    class="inline-flex items-center gap-x-2 rounded-md bg-wwGreen px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkGreen mr-2"
                    v-if="amount.bezahlt === false && store.getAktiverUser"
                    @click="showModal(amount)"
                  >
                    <CheckIcon class="-ml-0.5 h-5 w-5" aria-hidden="true" />
                  </button>
                  <button
                    type="button"
                    class="inline-flex items-center gap-x-2 rounded-md bg-wwRed px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkRed mr-2"
                    v-if="amount.bezahlt === false && store.getAktiverUser"
                    @click="deleteZahlung(amount)"
                  >
                    <TrashIcon class="-ml-0.5 h-5 w-5" aria-hidden="true" />
                  </button>
                </div>
              </div>
              <p
                class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600"
                v-if="Number(amount.remaining) > 7"
              >
                <span class="font-bold">{{ amount.remaining }} Tage</span> verbleiben
              </p>
              <p class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600" v-else>
                <span class="font-bold text-red-600">{{ amount.remaining }} Tage</span> verbleiben
              </p>
              <p class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600">
                Insagsammt offen: {{ amount.insgesamt_offene_summe }}€
              </p>
              <p class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600">{{ amount.grund }}</p>
            </div>
          </li>
        </ul>
        <h1 class="text-center text-xl my-4 text-gray-900" v-else>Alles wurde bezahlt</h1>
        <hr />
        <h2 class="text-lg font-bold mt-5 mx-3">Letzte Ausgaben:</h2>
        <ul role="list" class="divide-y divide-gray-100" v-if="abzVorhanden">
          <li v-for="amount in abz" :key="amount.a_id" class="flex gap-x-4 py-5">
            <span
              class="h-12 w-12 overflow-hidden rounded-full bg-red-50 flex items-center justify-center"
            >
              <MinusIcon class="w-8 text-wwRed" aria-hidden="true" />
            </span>
            <div class="flex-auto">
              <div class="flex items-baseline justify-between gap-x-4">
                <p class="text-sm font-semibold leading-6 text-gray-900">
                  <span class="font-bold mr-2">{{ Number(amount.amount).toFixed(2) }}€</span>
                </p>
              </div>
              <p class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600">{{ amount.reason }}</p>
            </div>
          </li>
        </ul>
        <h1 v-else class="my-4 mb-7 text-center font-bold text-xl text-gray-900">
          Es wurden noch nix ausgegeben
        </h1>

        <hr />
        <h2 class="text-lg font-bold mt-5 mx-3">Alle Beträge:</h2>
        <ul role="list" class="divide-y divide-gray-100">
          <li v-for="amount in openAmounts" :key="amount.id" class="flex gap-x-4 py-5">
            <img
              class="h-12 w-12 flex-none rounded-full bg-gray-50 ml-2"
              :src="amount.profilbild_url"
              alt=""
            />
            <div class="flex-auto">
              <div class="flex items-baseline justify-between gap-x-4">
                <p class="text-sm font-semibold leading-6 text-gray-900">
                  {{ amount.vorname }} {{ amount.nachname }},
                  <span class="font-bold mr-2">{{ Number(amount.betrag).toFixed(2) }}€</span>
                  <span
                    v-if="amount.bezahlt === false"
                    class="text-red-600 bg-red-50 ring-red-600/20 rounded-md whitespace-nowrap mt-0.5 px-1.5 py-0.5 text-xs font-medium ring-1 ring-inset'"
                  >
                    Offen
                  </span>
                  <span
                    v-else
                    class="text-green-500 bg-green-50 ring-green-600/20 rounded-md whitespace-nowrap mt-0.5 px-1.5 py-0.5 text-xs font-medium ring-1 ring-inset'"
                  >
                    Bezahlt
                  </span>
                </p>
              </div>
              <p class="mt-1 line-clamp-2 text-sm leading-6 text-gray-600">{{ amount.grund }}</p>
            </div>
          </li>
        </ul>
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
  CheckIcon,
  CreditCardIcon,
  CurrencyEuroIcon,
  PlusIcon,
  MinusIcon,
  StarIcon,
  TrashIcon,
} from '@heroicons/vue/20/solid';
import { ref, onMounted, reactive } from 'vue';
import { Dialog, DialogPanel, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue';

import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';

const router = useRouter();
const store = wwStore();

let showBezahlt = ref(false);
let showModalAbzug = ref(false);
const state = reactive({
  grund: '',
  price: '',
});

let abz = ref([]);
let activeAmount = ref({});
let sum = ref(0.0);
let abzVorhanden = ref(false);

onMounted(async () => {
  await getData();
});

async function getData() {
  const { data: zahlungData } = await axios.get('/zahlung');
  openAmounts.value = zahlungData;

  const { data: spielerData } = await axios.get('/spieler');
  sum.value = spielerData.insgesamtEingezahlteSumme;

  console.log(zahlungData);

  try {
    const { data: ausgabenData } = await axios.get('/ausgaben');
    abz.value = ausgabenData;
    abzVorhanden.value = true;
  } catch (error) {
    console.log(error);
    abzVorhanden.value = false;
  }
}

function showModal(amount) {
  activeAmount.value = amount;
  showBezahlt.value = true;
}

function hideModal() {
  showModalAbzug.value = false;
}

async function bezahlt(type) {
  try {
    await axios.patch(`/zahlung/${activeAmount.value.z_id}`, {
      bezahlt: true,
      zahlungsart: type,
    });

    showBezahlt.value = false;

    await getData();
  } catch (error) {
    console.log('Error');
  }
}

async function addAusgabeDB(e) {
  e.preventDefault();

  if (state.grund === '' || state.price === '') {
    return;
  } else {
    try {
      await axios.post('/ausgaben', {
        reason: state.grund,
        amount: state.price,
      });

      showModalAbzug.value = false;

      await getData();
    } catch (error) {
      console.log('Error');
    }
  }
}

async function deleteZahlung(amount) {
  try {
    await axios.delete(`/zahlung/${amount.z_id}`);
    await getData();
  } catch (error) {
    console.log('Error');
  }
}

// ------------------------------

const openAmounts = ref([]);

const navigation = [
  { name: 'Home', path: '/', current: true },
  { name: 'Regeln', path: '/rules', current: false },
  { name: 'Statistik', path: '/stats', current: false },
  { name: 'Suggestions', path: '/suggestions', current: false },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];
</script>
