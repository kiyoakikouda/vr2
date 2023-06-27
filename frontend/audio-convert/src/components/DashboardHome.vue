<template>
  <div>
    <h1>Agree to Terms:</h1>
    <input type="checkbox" id="checkbox" v-model="agreed"/>
  </div>
</template>

<script>
export default {
  name: 'CheckboxInput',
  data() {
    return {
      agreed: false
    };
  }
}
</script>
