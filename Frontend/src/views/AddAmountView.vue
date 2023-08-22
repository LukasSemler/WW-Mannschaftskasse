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
                  :class="[
                    item.current
                      ? 'bg-wwDarkGreen text-white'
                      : 'text-white hover:bg-wwLightGreen hover:bg-opacity-75',
                    'rounded-md px-3 py-2 text-sm font-medium',
                  ]"
                  :aria-current="item.current ? 'page' : undefined"
                  @click="router.push(item.path)"
                  >{{ item.name }}</a
                >
              </div>
            </div>
          </div>
          <div class="hidden md:block">
            <div class="ml-4 flex items-center md:ml-6">
              <!-- Profile dropdown -->
              <Menu as="div" class="relative ml-3" v-if="store.aktiverUser">
                <div>
                  <MenuButton
                    class="relative flex max-w-xs items-center rounded-full bg-wwGreen text-sm text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-indigo-600"
                  >
                    <span class="absolute -inset-1.5" />
                    <span class="sr-only">Open user menu</span>
                    <img class="h-8 w-8 rounded-full" :src="user.imageUrl" alt="" />
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
                    <MenuItem v-for="item in userNavigation" :key="item.name" v-slot="{ active }">
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
              >
                Login
              </button>
            </div>
          </div>
          <div class="-mr-2 flex md:hidden">
            <!-- Mobile menu button -->
            <DisclosureButton
              class="relative inline-flex items-center justify-center rounded-md bg-wwGreen p-2 text-indigo-200 hover:bg-wwLightGreen hover:bg-opacity-75 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-indigo-600"
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
        <div class="border-t border-wwGreen pb-3 pt-4" v-if="store.aktiverUser">
          <div class="flex items-center px-5">
            <div class="flex-shrink-0">
              <img class="h-10 w-10 rounded-full" :src="user.imageUrl" alt="" />
            </div>
            <div class="ml-3">
              <div class="text-base font-medium text-white">{{ user.name }}</div>
            </div>
          </div>
          <div class="mt-3 space-y-1 px-2">
            <DisclosureButton
              v-for="item in userNavigation"
              :key="item.name"
              as="a"
              :href="item.href"
              class="block rounded-md px-3 py-2 text-base font-medium text-white hover:bg-wwLightGreen hover:bg-opacity-75"
              >{{ item.name }}</DisclosureButton
            >
          </div>
        </div>
      </DisclosurePanel>
    </Disclosure>

    <header class="bg-white shadow">
      <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold leading-tight tracking-tight text-gray-900">Regeln</h1>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <ul role="list" class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
          <li
            v-for="person in people"
            :key="person.email"
            class="col-span-1 flex flex-col divide-y divide-gray-200 rounded-lg bg-white text-center shadow"
          >
            <div class="flex flex-1 flex-col p-8">
              <img
                class="mx-auto h-32 w-32 flex-shrink-0 rounded-full object-cover"
                :src="person.imageUrl"
                alt=""
              />
              <h3 class="mt-6 text-sm font-medium text-gray-900">{{ person.name }}</h3>
              <dl class="mt-1 flex flex-grow flex-col justify-between">
                <dt class="sr-only">Title</dt>
                <dd class="text-sm text-gray-500">{{ person.title }}</dd>
                <dt class="sr-only">Role</dt>
                <dd class="mt-3">
                  <span
                    class="inline-flex items-center rounded-full bg-green-50 px-2 py-1 text-xs font-medium text-green-700 ring-1 ring-inset ring-green-600/20"
                    >{{ person.role }}</span
                  >
                </dd>
              </dl>
            </div>
            <div>
              <div class="-mt-px flex divide-x divide-gray-200">
                <div class="flex w-0 flex-1">
                  <a
                    :href="`mailto:${person.email}`"
                    class="relative -mr-px inline-flex w-0 flex-1 items-center justify-center gap-x-3 rounded-bl-lg border border-transparent py-4 text-sm font-semibold text-gray-900"
                  >
                    <EnvelopeIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
                    Email
                  </a>
                </div>
                <div class="-ml-px flex w-0 flex-1">
                  <a
                    :href="`tel:${person.telephone}`"
                    class="relative inline-flex w-0 flex-1 items-center justify-center gap-x-3 rounded-br-lg border border-transparent py-4 text-sm font-semibold text-gray-900"
                  >
                    <PhoneIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
                    Call
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
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { useRouter } from 'vue-router';
import { wwStore } from '../store/wwStore.js';

const router = useRouter();
const store = wwStore();

const user = {
  name: 'Tom Cook',
  email: 'tom@example.com',
  imageUrl:
    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
};

const people = [
  {
    name: 'Jane Cooper',
    title: 'Paradigm Representative',
    role: 'Admin',
    email: 'janecooper@example.com',
    telephone: '+1-202-555-0170',
    imageUrl: '/PlayerImages/Wallner.jpg',
  },
  {
    name: 'Jane Cooper',
    title: 'Paradigm Representative',
    role: 'Admin',
    email: 'janecooper@example.com',
    telephone: '+1-202-555-0170',
    imageUrl: '/PlayerImages/Halmer-Ben.jpeg',
  },
  {
    name: 'Jane Cooper',
    title: 'Paradigm Representative',
    role: 'Admin',
    email: 'janecooper@example.com',
    telephone: '+1-202-555-0170',
    imageUrl: '/PlayerImages/Domian.jpg',
  },
  {
    name: 'Jane Cooper',
    title: 'Paradigm Representative',
    role: 'Admin',
    email: 'janecooper@example.com',
    telephone: '+1-202-555-0170',
    imageUrl: '/PlayerImages/Androsch.jpg',
  },
  {
    name: 'Jane Cooper',
    title: 'Paradigm Representative',
    role: 'Admin',
    email: 'janecooper@example.com',
    telephone: '+1-202-555-0170',
    imageUrl: '/PlayerImages/Bachmann-Tobi.jpg',
  },
];

const navigation = [
  { name: 'Home', path: '/', current: false },
  { name: 'Regeln', path: '/rules', current: false },
  { name: 'Statistik', path: '/stats', current: false },
];

const userNavigation = [{ name: 'Sign out', href: '#' }];
</script>
