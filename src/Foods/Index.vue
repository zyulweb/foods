
<template>
  <div>
    <headerw></headerw>
    <Lunbo></Lunbo>
    <Lbottom></Lbottom>
    <ListBottom></ListBottom>
    <Lshiling></Lshiling>
    <footrw></footrw>
  </div>
</template>

<script>
import LBottom from './Lbottom.vue'
import ListBottom1 from './ListBottom.vue'
import LShiling from './Lshiling'
import Footrw from './Footr'
import Headerw from './Header'
import Lunbo from './Lunbo'
export default {
  data(){
    return {}
  },
  components:{
    "Lunbo":Lunbo,
    "Lbottom":LBottom,
    "ListBottom":ListBottom1,
    "Lshiling":LShiling,
    "footrw":Footrw,
    "headerw":Headerw
  }
}

</script>
<style>


</style>
