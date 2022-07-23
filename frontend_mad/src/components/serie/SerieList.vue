<script setup lang="ts">
import type { Serie } from '@/types/serie';
import { onMounted, ref } from 'vue';
import http from "@/plugins/axios";
import router from '@/router';

const props = defineProps<{
  ENDPOINT_API: string;
}>();

const ENDPOINT = props.ENDPOINT_API;
var series = ref<Serie[]>([]);

async function getSeries() {
  series.value = await http.get(ENDPOINT).then(response => response.data);
}

function toEdit(id: number) {
  router.push(`/series/editar/${id}`);
}

async function toDelete(id: number) {
  var r = confirm("¿Está seguro que se desea eliminar el serie?");
  if(r == true) {
    await http.delete(`${ENDPOINT}/${id}`).then(() => getSeries());
  }
}

onMounted(() => {
  getSeries();
});
</script>

<template>
  <div class="container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><RouterLink to="/">Inicio</RouterLink></li>
        <li class="breadcrumb-item active" aria-current="page">Series</li>
      </ol>
    </nav>

    <div class="row">
      <h2>Lista de Series</h2>
      <div class="col-12">
        <RouterLink to="/series/crear">Crear Nuevo</RouterLink>
      </div>
    </div>

    <div class="table-responsive bg-secondary">
      <table class="table table-bordered table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">N°</th>
            <th scope="col">Titulo</th>
            <th scope="col">Sinopsis</th>
            <th scope="col">Director</th>
            <th scope="col">Duración</th>
            <th scope="col">Año estreno</th>
            <th scope="col">Acciones</th>
          </tr>
        </thead>
        <tbody class="bg-info">
          <tr
            v-for="(serie, index) in series.values()" :key="serie.id"
          >
            <th scope="row">{{ index + 1 }}</th>
            <td>{{ serie.titulo }}</td>
            <td>{{ serie.sinopsis }}</td>
            <td>{{ serie.director }}</td>
            <td>{{ serie.duracion }}</td>
            <td>{{ serie.anio_estreno }}</td>
            <td>
              <button class="btn btn-link text-danger" @click="toEdit(serie.id)">Editar</button>
              <button class="btn btn-link text-secondary" @click="toDelete(serie.id)">Eliminar</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<style></style>
