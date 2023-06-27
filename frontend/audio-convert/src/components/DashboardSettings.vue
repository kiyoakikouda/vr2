<template>
  <div>
    <label htmlFor="select">Country:</label>
    <select id="select" v-model="selectedCountry">
      <option value="">-- Select --</option>
      <option value="us">United States</option>
      <option value="uk">United Kingdom</option>
      <option value="jp">Japan</option>
    </select>
  </div>
</template>

<script>
export default {
  name: 'SelectInput',
  data() {
    return {
      selectedCountry: ''
    };
  }
}
</script>
