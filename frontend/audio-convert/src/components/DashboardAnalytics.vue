<template>
  <div>
    <h1>TextInput</h1>
    <p>test</p>
    <input type="text" id="name" v-model="name"/>
  </div>
</template>

<script>
export default {
  name: 'TextInput',
  data() {
    return {
      name: ''
    };
  }
}
</script>
