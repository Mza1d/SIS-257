<script setup lang="ts">
import type { Serie } from "@/types/serie";
import { onMounted, ref } from "vue";
import http from "@/plugins/axios";
import router from "@/router";

const props = defineProps<{
  ENDPOINT_API: string;
}>();

const ENDPOINT = props.ENDPOINT_API;
const titulo = ref("");
const sinopsis = ref("");
const director = ref("");
const duracion = ref("");
const anio_estreno = ref("");

async function crearSerie() {
  await http
    .post(ENDPOINT, {
      titulo: titulo.value, sinopsis: sinopsis.value,
      director: director.value, duracion: duracion.value, anio_estreno: anio_estreno.value})
    .then(() => router.push("/series"));
}

function goBack() {
  router.go(-1);
}
</script>

<template>
  <div class="container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><RouterLink to="/">Inicio</RouterLink></li>
        <li class="breadcrumb-item">
          <RouterLink to="/series">Series</RouterLink>
        </li>
        <li class="breadcrumb-item active" aria-current="page">Crear</li>
      </ol>
    </nav>

        <div class="row text-white">
      <h2>Crear Serie</h2>
    </div>

    <div class="row text-black">
      <form @submit.prevent="crearSerie">
        <div class="form-floating mb-3">
          <input
            type="text"
            class="form-control bg-secondary"
            v-model="titulo"
            placeholder="Titulo"
            required
          />
          <label for="titulo">Titulo</label>
        </div>
        <div class="form-floating mb-3">
          <input
            type="text"
            class="form-control bg-secondary"
            v-model="sinopsis"
            placeholder="Sinopsis"
            required
          />
          <label for="sinopsis">Sinopsis</label>
        </div>
        <div class="form-floating mb-3">
          <input
            type="text"
            class="form-control bg-secondary"
            v-model="director"
            placeholder="Director"
            required
          />
          <label for="director">Director</label>
        </div>
        <div class="form-floating mb-3">
          <input
            type="number"
            class="form-control bg-secondary"
            v-model="duracion"
            placeholder="Duracion"
            required
          />
          <label for="duracion">Duracion</label>
        </div>
        <div class="form-floating mb-3">
          <input
            type="number"
            class="form-control bg-secondary"
            v-model="anio_estreno"
            placeholder="Año estreno"
            required
          />
          <label for="anio_estreno">Año estreno</label>
        </div>
        <div class="text-center mt-3">
          <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
        </div>
      </form>
    </div>

    <div class="text-left">
      <button class="btn btn-link" @click="goBack">Volver</button>
    </div>
  </div>
</template>

<style></style>
