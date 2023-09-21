<template>
  <TransitionRoot as="template" :show="showModal">
    <Dialog as="div" class="relative z-10" @close="showModal = true">
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
                  <DialogTitle as="h1" class="font-semibold leading-6 text-gray-900 text-xl"
                    >Neue Strafe</DialogTitle
                  >
                  <div class="mt-2 text-left">
                    <Combobox as="div" v-model="selectedStrafe">
                      <ComboboxLabel class="block text-sm font-medium leading-6 text-gray-900"
                        >Assigned to</ComboboxLabel
                      >
                      <div class="relative mt-2">
                        <ComboboxInput
                          class="w-full rounded-md border-0 bg-white py-1.5 pl-3 pr-10 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
                          @change="query = $event.target.value"
                          :display-value="(strafe) => strafe?.name"
                        />
                        <ComboboxButton
                          class="absolute inset-y-0 right-0 flex items-center rounded-r-md px-2 focus:outline-none"
                        >
                          <ChevronUpDownIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
                        </ComboboxButton>

                        <ComboboxOptions
                          v-if="filteredStrafen.length > 0"
                          class="absolute z-10 mt-1 max-h-60 w-full overflow-auto rounded-md bg-white py-1 text-base shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none sm:text-sm"
                        >
                          <ComboboxOption
                            v-for="strafe in filteredStrafen"
                            :key="strafe.id"
                            :value="strafe"
                            as="template"
                            v-slot="{ active, selected }"
                          >
                            <li
                              :class="[
                                'relative cursor-default select-none py-2 pl-3 pr-9',
                                active ? 'bg-wwGreen text-white' : 'text-gray-900',
                              ]"
                            >
                              <span :class="['block truncate', selected && 'font-semibold']">
                                {{ strafe.name }}
                              </span>

                              <span
                                v-if="selected"
                                :class="[
                                  'absolute inset-y-0 right-0 flex items-center pr-4',
                                  active ? 'text-white' : 'text-wwGreen',
                                ]"
                              >
                                <CheckIcon class="h-5 w-5" aria-hidden="true" />
                              </span>
                            </li>
                          </ComboboxOption>
                        </ComboboxOptions>
                      </div>
                    </Combobox>

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
                          v-if="selectedStrafe && selectedStrafe.price !== null"
                          v-model="selectedStrafe.price"
                          type="text"
                          name="price"
                          id="price"
                          class="block w-full rounded-md border-0 py-1.5 pl-7 pr-12 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
                          placeholder="0.00"
                          aria-describedby="price-currency"
                        />
                        <input
                          v-else
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
                  @click="addAmountDB"
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
          <div class="mr-2 flex md:hidden">
            <!-- Mobile menu button -->
            <DisclosureButton
              class="relative inline-flex items-center justify-center rounded-md bg-wwGreen p-2 text-lime-200 hover:bg-wwLightGreen hover:bg-opacity-75 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-wwDarkGreen"
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
      <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">Neue Strafe</h1>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <ul role="list" class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
          <li
            v-for="(player, i) in players"
            :key="i"
            class="col-span-1 flex flex-col divide-y divide-gray-200 rounded-lg bg-white text-center shadow"
          >
            <div class="flex flex-1 flex-col p-8">
              <img
                class="mx-auto h-32 w-32 flex-shrink-0 rounded-full object-cover"
                :src="player.profilbild_url"
                alt=""
              />
              <h3 class="mt-6 text-sm font-medium text-gray-900">
                {{ player.vorname }} {{ player.nachname }}
              </h3>
            </div>
            <div>
              <div class="-mt-px flex divide-x divide-gray-200 cursor-pointer">
                <div class="flex w-0 flex-1">
                  <a
                    @click="addNewAmount(player)"
                    class="relative -mr-px inline-flex w-0 flex-1 items-center justify-center gap-x-3 rounded-bl-lg border border-transparent py-4 text-sm font-semibold text-gray-900"
                  >
                    <PlusIcon class="h-7 w-7 text-wwGray" aria-hidden="true" />
                    Neue Strafe
                  </a>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </main>
  </div>
</template>

<script setup>
import {
  Disclosure,
  DisclosureButton,
  DisclosurePanel,
  Menu,
  MenuButton,
  MenuItem,
  MenuItems,
} from '@headlessui/vue';
import { Dialog, DialogPanel, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue';
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { PlusIcon } from '@heroicons/vue/20/solid';
import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';
import axios from 'axios';
import { openDB } from 'idb';
import { ref, onMounted, reactive, computed } from 'vue';

import { CheckIcon, ChevronUpDownIcon } from '@heroicons/vue/20/solid';
import {
  Combobox,
  ComboboxButton,
  ComboboxInput,
  ComboboxLabel,
  ComboboxOption,
  ComboboxOptions,
} from '@headlessui/vue';

const strafen = ref([
  { id: 1, name: 'Zu spät kommen beim Training', price: null },
  { id: 2, name: 'Zu spät kommen beim Match', price: null },
  { id: 3, name: 'Nicht erscheinen im Training ohne Absage', price: 5.0 },
  { id: 4, name: 'Training ohne Grund Absagen', price: 2.5 },
  { id: 5, name: 'Besoffen zum Training', price: 5.0 },
  { id: 6, name: 'Besoffen zum Match', price: 10.0 },
  { id: 7, name: 'Kurze Socken im Training', price: 1.0 },
  { id: 8, name: 'Kleidung vergessen', price: null },
  { id: 9, name: 'Schuhe vergessen', price: 1.0 },
  { id: 10, name: 'Keine Springschnur / Theraband / Ball', price: 1.0 },
  { id: 11, name: 'Headshot Torwart', price: 1.0 },
  { id: 12, name: 'Headshot Torwart (freier Wurf)', price: 1.5 },
  { id: 13, name: 'Field Goal im Training', price: 0.5 },
  { id: 13, name: 'Field Goal im Match', price: 1.0 },
  { id: 14, name: 'Dumme rote Karte', price: 5.0 },
  { id: 15, name: 'Dumme 2min', price: 2.5 },
  { id: 16, name: 'Dresscode Freitag', price: 1.0 },
  { id: 17, name: 'Dresscode vor einem Match', price: 2.0 },
  { id: 18, name: 'Reden, während ein Trainer spricht', price: 1.0 },
  { id: 19, name: 'Pick vergessen', price: 1.0 },
  { id: 20, name: 'Dummes, unnötiges Foul im Training', price: 1.0 },
  { id: 21, name: 'Nicht laufen gehen / Kraft', price: 2.0 },
  { id: 22, name: 'Keine Wasserflasche', price: 1.0 },
  { id: 23, name: 'Rülpsen im Training', price: 1.0 },
  { id: 24, name: 'Furzen im Training', price: 1.0 },
  { id: 25, name: 'Dress vergessen', price: 5.0 },
  { id: 26, name: 'Schlechte Musik', price: null },
  { id: 27, name: 'Anderes', price: null },
  { id: 28, name: 'Trainer beleidigen', price: 2.5 },
  { id: 29, name: 'Spende', price: null },
]);

const query = ref('');
const selectedStrafe = ref(null);
const filteredStrafen = computed(() =>
  query.value === ''
    ? strafen.value
    : strafen.value.filter((strafe) => {
        return strafe.name.toLowerCase().includes(query.value.toLowerCase());
      }),
);

const router = useRouter();
const store = wwStore();

const players = ref([]);
let activePlayer = ref(null);
let showModal = ref(false);
const state = reactive({
  reason: '',
  price: '',
});

const navigation = [
  { name: 'Home', path: '/', current: false },
  { name: 'Regeln', path: '/rules', current: false },
  { name: 'Statistik', path: '/stats', current: false },
  { name: 'Suggestions', path: '/suggestions', current: false },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];

onMounted(async () => {
  try {
    const { data } = await axios.get('/spieler');
    console.log(data);
    players.value = data.spieler;
  } catch (error) {}
});

function addNewAmount(player) {
  activePlayer.value = player;
  showModal.value = true;
  console.log(activePlayer.value);
}

async function addAmountDB() {
  //Check if selectedStrafe is null or if selectedStrafe.price is null and state.price is empty
  if (
    selectedStrafe.value === null ||
    (selectedStrafe.value.price === null && state.price === '')
  ) {
    console.log('Error, nicht alle ausgefüllt');
  } else {
    try {
      await axios.post('/zahlung', {
        spielerID: activePlayer.value.s_id,
        grund: selectedStrafe.value.name,
        betrag: selectedStrafe.value.price ? selectedStrafe.value.price : state.price,
      });
    } catch (error) {
      //Weil kein Internet --> Speichern in IndexDB
      if (!('indexedDB' in window)) return;

      let db = await openDB('WW-Mannschaftskasse', 1, {
        async upgrade(Db, oldVersion, NewVersion, Transaction) {},
      });

      //Zahlung offline in IndexedDB einfügen
      await db.add('Zahlungen_ObjectStore', {
        spielerID: activePlayer.value.s_id,
        grund: selectedStrafe.value.name,
        betrag: selectedStrafe.value.price ? selectedStrafe.value.price : state.price,
      });
    }

    hideModal();
  }
}

function hideModal() {
  showModal.value = false;
  selectedStrafe.value = null;
  state.price = '';
}
</script>
