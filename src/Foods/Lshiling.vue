<template>
  <div class="page-shiling">
   <div class="shiling-title">
      <h3>
        <a href="#">新秀菜谱</a>
      </h3>
       
        <a class="shiling-list" href="#">食材首页</a>
        <a class="shiling-list" href="#">米面豆乳</a>
        <a class="shiling-list" href="#">小蔬菜吃</a>
        <a class="shiling-list" href="#">水产品</a>
        <a class="shiling-list" href="#">肉禽蛋</a>
       
    </div>
    <ul class="shiling-ul">
      <li class="shiling-content" v-for="(item,index) in list" :key="index" >
        <img v-bind:src="item.src" alt="">
        <p>{{item.title1}}</p>
        <a href="#">{{item.title2}}</a>
      </li>
    </ul>
    <ul class="shiling-ul">
      <li class="shiling-content" v-for="(item,index) in list1" :key="index" >
        <img v-bind:src="item.src" alt="">
        <p>{{item.title1}}</p>
        <a href="#">{{item.title2}}</a>
      </li>
    </ul>
  </div>
</template>

<script>
import tu1 from '../img/imgs/shiling1.jpg'
import tu2 from '../img/imgs/shiling2.jpg'
import tu3 from '../img/imgs/shiling3.jpg'
import tu4 from '../img/imgs/shiling4.jpg'
import tu5 from '../img/imgs/shiling5.jpg'
import tu6 from '../img/imgs/shiling6.jpg'
import tu7 from '../img/imgs/shiling7.jpg'
import tu8 from '../img/imgs/shiling8.jpg'
import tu9 from '../img/imgs/shiling9.jpg'
import tu10 from '../img/imgs/shiling10.jpg'
import tu11 from '../img/imgs/shiling11.jpg'
import tu12 from '../img/imgs/shiling12.jpg'
import tu13 from '../img/imgs/shiling13.jpg'
import tu14 from '../img/imgs/shiling14.jpg'

  export default {
    data(){
    return{
      list:[
        {title1:"西红柿",title2:"美白防晒首选",src:tu1},
        {title1:"黄瓜",title2:"厨房里的美容师",src:tu2},
        {title1:"苦瓜",title2:"苦尽甘来",src:tu3},
        {title1:"西瓜",title2:"群众宠儿",src:tu4},
        {title1:"茄子",title2:"微笑的代名词",src:tu5},
        {title1:"西兰花",title2:"蔬菜皇冠",src:tu6},
        {title1:"毛豆",title2:"夏日圣斗士",src:tu7},
       
      ],
        list1:[
        {title1:"小龙虾",title2:"万年网红",src:tu8},
        {title1:"猪里脊",title2:"超嫩小鲜肉",src:tu9},
        {title1:"皮皮虾",title2:"天生美味难自弃",src:tu10},
        {title1:"生蚝",title2:"海中牛奶",src:tu11},
        {title1:"鲈鱼",title2:"但爱鲈鱼美",src:tu12},
        {title1:"鸡翅",title2:"老少通吃",src:tu13},
        {title1:"排骨",title2:"可记得吮指之乐",src:tu14},
       
      ],
    }
},
    methods: {

    }
  }
</script>

<style>
  *{
  margin: 0;
  padding: 0;
}
li{
  list-style-type: none;
}
.page-shiling{
  width: 70%;
  min-width: 1100px;;
  /* height: 150px; */
  /* border: 1px solid red; */
  margin: 0 auto;
  overflow: hidden;
  position: relative;
}
.shiling-title{
  width: 100%;
  height: 35px;
  border-bottom: 1px solid #E8E8E8;
  position: relative;
}
.shiling-title>h3{
  float: left;
    font-weight: 400;
    display: inline-block;
    font-size: 20px;
    margin-right: 20px;
    color: #666;
    padding-bottom: 4px;
    outline: 0;
    color: #333;
    max-width: 100%;
    overflow: hidden;
    text-decoration: none;
    text-overflow: ellipsis;
    white-space: nowrap;
    border-bottom: 3px solid #ff5656;
  
}
.shiling-title>h3>a{
  color: #ff5656;
  text-decoration: none;
}
.shiling-list{
  font-size: 16px;
  float: right;
  margin-left: 20px;
  color: #333333;
  text-decoration: none;
}
.shiling-list:hover{
  color: #ff5656;
}
.shiling-ul{
  width: 100%;
  /* border: 1px solid blue; */
  height: 200px;
  display: flex;
  justify-content: space-between;
}
.shiling-content{
  width: 12%;
  height: 190px;
  /* border: 1px solid green; */
  

}
.shiling-content>img{
  width: 100%;

}
.shiling-content>a{
  color: #999999;
  font-size: 12px;
  text-decoration: none;
}
</style>