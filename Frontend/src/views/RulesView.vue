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
      <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">Regeln</h1>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <!-- Show all rules and how much they cost if you break them -->
        <p class="mx-5 mb-7">
          Hier findet ihr alle Regeln von der Mannschaftskasse und die dazugehörigen Preise. Wen
          eine neue Regeln hinzugefügt wird gebe ich euch im Training bescheid. Wenn ihr Vorschläge
          für neue Regeln habt gebt mir bitte auch bescheid, dann könne wir abstimmen, ob diese neue
          Regel hinzugefügt wird, oder nicht.
        </p>
        <p class="mx-5">Meine Kontodaten für die Überweisung findet ihr hier:</p>
        <p class="mx-5 font-bold mb-7">IBAN: AT48 2011 1296 1060 0801</p>

        <ul role="list" class="divide-y divide-gray-100 mx-5">
          <li
            v-for="(rule, i) in rules"
            :key="i"
            class="flex flex-wrap items-center justify-between gap-x-6 gap-y-4 py-5 sm:flex-nowrap"
          >
            <div>
              <p class="text-sm font-semibold leading-6 text-gray-900">
                {{ rule.description }}
              </p>
            </div>
            <dl class="flex w-full flex-none justify-between gap-x-8 sm:w-auto">
              <div class="flex gap-x-2.5">
                <dd class="text-sm leading-6 text-gray-900">{{ rule.price }}</dd>
              </div>
            </dl>
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
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';

const router = useRouter();
const store = wwStore();

const navigation = [
  { name: 'Home', path: '/', current: false },
  { name: 'Regeln', path: '/rules', current: true },
  { name: 'Statistik', path: '/stats', current: false },
  { name: 'Suggestions', path: '/suggestions', current: false },
];

const rules = [
  {
    description:
      'Zu spät kommen beim Training (Man muss 10min vor Trainingsbeginn in der Halle sein)',
    price: '50c pro Minute',
  },
  { description: 'Zu spät kommen beim Match (Ab Treffpunkt)', price: '1€ pro Minute' },
  {
    description:
      'Nicht erscheinen im Training ohne Absage (Absagen gelten bis 2h vor dem Training)',
    price: '5€',
  },
  {
    description: 'Training ohne Grund Absagen',
    price: '2.5€',
  },
  {
    description: 'Besoffen zum Training',
    price: '5€',
  },
  {
    description: 'Besoffen zum Match',
    price: '10€',
  },
  {
    description: 'Kurze Socken im Training',
    price: '1€',
  },
  {
    description: 'Kleidung vergessen (zu Hause oder im Training)',
    price: '50c pro Kleidungsstück',
  },
  {
    description: 'Schuhe vergessen (zu Hause oder im Training)',
    price: '2€',
  },
  {
    description: 'Keine Springschnur / Theraband / Ball',
    price: '1€',
  },
  {
    description: 'Headshot Torwart',
    price: '1€',
  },
  {
    description: 'Headshot Torwart bei einem freien Wurf',
    price: '1.5€',
  },
  {
    description:
      'Field Goal im Training (zählt wenn der Ball das Holz berührt, freier Wurf ohne Kontakt)',
    price: '50c',
  },
  {
    description: 'Dumme rote Karte',
    price: '15€',
  },
  {
    description: 'Dumme 2min (Mit Schiri diskutieren, Schiri beleidigen, etc.)',
    price: '5€',
  },
  {
    description: 'Dresscode Freitag',
    price: '1€',
  },
  {
    description: 'Dresscode vor einem Match (alle grünes T-Shirt)',
    price: '2€',
  },
  { description: 'Reden, während ein Trainer spricht', price: '1€' },
  {
    description: 'Pick vergessen bzw. keines mehr da (gilt nur für den Zuständigen)',
    price: '1€',
  },
  {
    description: 'Dummes, unnötiges Foul im Training',
    price: '1€',
  },
  {
    description: 'Nicht laufen gehen, kein Krafttraining machen',
    price: '2€',
  },
  {
    description: 'Keine Wasserflasche',
    price: '1€',
  },
  {
    description: 'Rülpsen im Training',
    price: '1€',
  },
  {
    description: 'Furzen im Training',
    price: '1€',
  },
  {
    description: 'Dress vergessen',
    price: '5€',
  },
  {
    description: 'Springschnur nicht in der Halle',
    price: '1€',
  },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];
</script>
