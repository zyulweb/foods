import Vue from 'vue'
import Router from 'vue-router'


//引入Exam.vue组件
import Recipe from "./Foods/Recipe.vue"
import Header from './Foods/Header.vue'//引入头部组件
import Indexx from './Foods/Indexx.vue'
import Zhenxuan from './zhenxuan/Zhenxuan.vue'
import Footr from './Foods/Footr.vue'
import Fenlei from './zhenxuan/Fenlei.vue'
import Denglu from './denglu/Denglu.vue'
import Zhuce from './denglu/Zhuce.vue'
import RecipeType from './Foods/Recipe-type.vue'
import Index from './Foods/Index.vue'
import Lbottom from './Foods/Lbottom.vue'
import ListBottom from './Foods/ListBottom.vue'
import Lshiling from './Foods/Lshiling.vue'
import Lunbo from './Foods/Lunbo.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Lunbo',component:Lunbo},
    {path:'/Lshiling',component:Lshiling},
    {path:'/ListBottom',component:ListBottom},
    {path:'/Lbottom',component:Lbottom},
    {path:'/Index',component:Index},
    {path:'/Recipe-type',component:RecipeType},
    {path:'/Zhuce',component:Zhuce},
    {path:'/Denglu',component:Denglu},
    {path:'/Fenlei',component:Fenlei},
    {path:'/Footr',component:Footr},
    {path:'/Zhenxuan',component:Zhenxuan},
    {path:'/Recipe',component:Recipe},
    {path:'/Header',component:Header},
    {path:'/Indexx',component:Indexx}
  ]
})
