<template>
    <div>
      <headery></headery>
     
      <zhenxuanx></zhenxuanx>

      <footr1></footr1>
    </div>
</template>

<script>
// 1.引入导航头部
import Headers from "./Header.vue"
import ZhenxuanVue from '../zhenxuan/Zhenxuan.vue'
import Footr1 from './Footr.vue'

export default {
  data(){
    return{
 
    }
  },
  components:{
    "headery":Headers,
    "zhenxuanx":ZhenxuanVue,
    "footr1":Footr1
  }
}
</script>

<style>

</style>
