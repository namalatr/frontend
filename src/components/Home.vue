<template>
  <div>
    Welcome Home
  </div>
</template>
<script>

import axios from 'axios';
export default {  
  data() {
    return {
      x: 0,
      comp: 'Navbar',
    }
  },
  created(){
    axios.get("/api/home")
    .then((res)=>{
      console.log(res)
    })
    .catch((e)=>{
      console.log(e)
    })
  }

}
</script>
<style scoped></style>
