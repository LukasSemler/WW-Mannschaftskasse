<template>
  <div
    aria-live="assertive"
    class="pointer-events-none fixed inset-0 flex items-end px-4 py-6 sm:items-start sm:p-6"
  >
    <div class="flex w-full flex-col items-center space-y-4 sm:items-end">
      <!-- Notification panel, dynamically insert this into the live region when it needs to be displayed -->
      <transition
        enter-active-class="transform ease-out duration-300 transition"
        enter-from-class="translate-y-2 opacity-0 sm:translate-y-0 sm:translate-x-2"
        enter-to-class="translate-y-0 opacity-100 sm:translate-x-0"
        leave-active-class="transition ease-in duration-100"
        leave-from-class="opacity-100"
        leave-to-class="opacity-0"
      >
        <div
          v-if="showError"
          class="pointer-events-auto w-full max-w-sm overflow-hidden rounded-lg bg-white shadow-lg ring-1 ring-black ring-opacity-5"
        >
          <div class="p-4">
            <div class="flex items-start">
              <div class="flex-shrink-0">
                <XCircleIcon class="h-6 w-6 text-red-600" aria-hidden="true" />
              </div>
              <div class="ml-3 w-0 flex-1 pt-0.5">
                <p class="text-sm font-medium text-gray-900">Error :(</p>
                <p class="mt-1 text-sm text-gray-500">
                  Du hast für den Vorschlag schon abgestimmt. Du kannst deine Meinung nur ändern und
                  nicht erneut abstimmen
                </p>
              </div>
              <div class="ml-4 flex flex-shrink-0">
                <button
                  type="button"
                  @click="showError = false"
                  class="inline-flex rounded-md bg-white text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-red-600 focus:ring-offset-2"
                >
                  <span class="sr-only">Close</span>
                  <XMarkIcon class="h-5 w-5" aria-hidden="true" />
                </button>
              </div>
            </div>
          </div>
        </div>
      </transition>
    </div>
  </div>

  <TransitionRoot as="template" :show="showSuggestion">
    <Dialog as="div" class="relative z-10" @close="showSuggestion = true">
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
                    >Neuer Vorschlag</DialogTitle
                  >
                  <div class="text-left">
                    <label
                      for="suggestion"
                      class="block text-sm font-medium leading-6 text-gray-900"
                      >Vorschlag:</label
                    >
                    <div class="mt-2">
                      <textarea
                        v-model="state.sug"
                        rows="4"
                        name="suggestion"
                        id="suggestion"
                        class="pl-3 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"
                      />
                    </div>
                  </div>
                </div>
              </div>
              <div class="mt-5 sm:mt-6 sm:grid sm:grid-flow-row-dense sm:grid-cols-2 sm:gap-3">
                <button
                  type="button"
                  class="inline-flex w-full justify-center rounded-md bg-wwGreen px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen sm:col-start-2"
                  @click="addSuggestion"
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
                class="h-10 w-10 rounded-full z-0"
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
      <div class="flex mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8 justify-between">
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">Vorschläge</h1>
        <button
          @click="showSuggestion = true"
          type="button"
          class="mx-3 rounded-full bg-wwGreen p-2 text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwDarkGreen"
        >
          <PlusIcon class="h-5 w-5" aria-hidden="true" />
        </button>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <!-- Show all rules and how much they cost if you break them -->
        <p class="mx-5 mb-7">
          Hier könnt ihr Vorschläge was wir am Ende der Saison mit dem ganzen Geld machen könnten.
          Wenn ihr einen Vorschlag habt, schreibt ihn einfach rein. Ihr könnt dann für die anderen
          Vorschläge abstimmen, ob sie euch gefallen oder nicht
        </p>

        <ul role="list" class="divide-y divide-gray-100 ml-5 mr-4" v-if="suggestions.length > 0">
          <li v-for="(sug, i) in suggestions" :key="i" class="flex gap-x-4 py-5">
            <div class="flex-auto">
              <div class="flex justify-between gap-x-4">
                <p class="text-sm font-semibold leading-6 text-gray-900 mb-3">
                  <span
                    @click="addLike(sug)"
                    class="mr-3 inline-flex items-center gap-x-1.5 rounded-md bg-green-100 px-2 py-1 text-xs font-medium text-green-700"
                  >
                    <HandThumbUpIcon class="h-5 w-5"></HandThumbUpIcon>
                    {{ sug.likes }}
                  </span>
                  <span
                    @click="addDislike(sug)"
                    class="inline-flex items-center gap-x-1.5 rounded-md bg-red-100 px-2 py-1 text-xs font-medium text-red-700"
                  >
                    <HandThumbDownIcon class="h-5 w-5"></HandThumbDownIcon>
                    {{ sug.dislikes }}
                  </span>
                </p>
              </div>
              <p class="mt-1 text-sm leading-6 text-gray-600">{{ sug.suggestion }}</p>
            </div>
          </li>
        </ul>
        <h1 v-else class="text-center text-xl font-bold mt-7">
          Es sind noch keine Vorschläge vorhanden
        </h1>
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
import { Dialog, DialogPanel, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue';
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { HandThumbUpIcon, HandThumbDownIcon, PlusIcon, XCircleIcon } from '@heroicons/vue/20/solid';
import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';
import { ref, onMounted, reactive } from 'vue';

const router = useRouter();
const store = wwStore();

const suggestions = ref([]);
const showError = ref(false);

let showSuggestion = ref(false);
const state = reactive({
  sug: '',
});

onMounted(async () => {
  await getData();
});

async function getData() {
  const { data } = await axios.get('/suggestions');
  console.log(data);
  suggestions.value = data;
}

async function addLike(sug) {
  console.log('Clicked');
  try {
    const localSug = JSON.parse(localStorage.getItem(`SUGGESTION${sug.sg_id}`));
    if (localSug.type === 'like') {
      showError.value = true;

      setTimeout(() => {
        showError.value = false;
      }, 3000);
    } else {
      //Darf liken, dislike entfernen
      //dislike entfernen
      await axios.patch(`/entfSuggestionsD/${sug.sg_id}`);

      //liken
      const { data } = await axios.patch(`/suggestionsL/${sug.sg_id}`);
      data.type = 'like';
      localStorage.removeItem(`SUGGESTION${sug.sg_id}`);
      localStorage.setItem(`SUGGESTION${sug.sg_id}`, JSON.stringify(data));
      await getData();
    }
  } catch (error) {
    //No Suggestion with this ID add to LS
    sug.type = 'like';
    localStorage.setItem(`SUGGESTION${sug.sg_id}`, JSON.stringify(sug));

    //Darf liken
    await axios.patch(`/suggestionsL/${sug.sg_id}`);
    await getData();
  }
}

async function addDislike(sug) {
  console.log('Clicked');
  try {
    const localSug = JSON.parse(localStorage.getItem(`SUGGESTION${sug.sg_id}`));
    if (localSug.type === 'dislike') {
      showError.value = true;

      setTimeout(() => {
        showError.value = false;
      }, 3000);
    } else {
      //Darf disliken, like entfernen
      //dislike entfernen
      await axios.patch(`/entfSuggestionsL/${sug.sg_id}`);

      //liken
      const { data } = await axios.patch(`/suggestionsD/${sug.sg_id}`);
      data.type = 'dislike';
      localStorage.removeItem(`SUGGESTION${sug.sg_id}`);
      localStorage.setItem(`SUGGESTION${sug.sg_id}`, JSON.stringify(data));

      await getData();
    }
  } catch (error) {
    //No Suggestion with this ID add to LS
    sug.type = 'dislike';
    localStorage.setItem(`SUGGESTION${sug.sg_id}`, JSON.stringify(sug));

    //Darf liken
    await axios.patch(`/suggestionsD/${sug.sg_id}`);
    await getData();
  }
}

async function addSuggestion(e) {
  e.preventDefault();
  if (state.sug.length > 0) {
    await axios.post('/suggestions', {
      suggestion: state.sug,
    });
    await getData();
    hideModal();
  }
}

function hideModal() {
  state.sug = '';
  showSuggestion.value = false;
}
const navigation = [
  { name: 'Home', path: '/', current: false },
  { name: 'Regeln', path: '/rules', current: false },
  { name: 'Statistik', path: '/stats', current: false },
  { name: 'Suggestions', path: '/suggestions', current: true },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];
</script>
