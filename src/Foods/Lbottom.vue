<template>
<div>
  <!-- <div class="lunbo-bottom">
     <el-carousel :interval="5000" arrow="always">
    <el-carousel-item v-for="item in 4" :key="item">
      <h3> <ul class="lunbo-bom" >
        <li class="lunbo-bom-list">
          <h2><a href="#">爱虾的百种办法</a>
          <p>
            <span>萌萌虾球的菜单  </span><br><br>这里有上百种鲜虾的做法，总有一款是你喜欢的味道，还不赶快来学一道，找机会给家人露一手？
          </p>
          </h2>
          
        </li>
        <li class="lunbo-bom-list">
          <h2><a href="#">让人欲罢不能的烧烤</a>
          <p>
            <span>小美的菜单  </span><br><br>撸串是对夏天最起码的尊重！有如此多的美食伴随，约上好友一起开撸，人生是如此的得意
          </p>
          </h2>
          
        </li>
         <li class="lunbo-bom-list">
          <h2><a href="#">佐粥小菜</a>
          <p>
            <span>lx留白的菜单  </span><br><br>早餐时来一款小咸菜，配上一碗白粥，几口馒头或饼，典型的中式早餐，值得回味的中式味道
          </p>
          </h2>
          
        </li>
        </ul>
        </h3>
    </el-carousel-item>
  </el-carousel>
    
  </div> -->

    <div class="page-article">
      <div v-for="(item,index) in p" :key="index" id="w3_one" class="w3_content1" style="margin-right: 1.5%">
            
            <div class="w3_content1_title">
              <a class="w3_jiangkang yangshi" id="jiangkang" @click="jiangkang()" href="javascript:;">{{item.title}}</a>
              <a class="w3_shiliao" id="shiliao" @click="shiliao()" href="javascript:;">{{item.title1}}</a>
              <a class="w3_content1_title_a" href="#">{{item.title2}}</a>
            </div>
            <img class="w3_middle" v-bind:src="item.src" >
            <ul class="w3_xinwen">
              <li>
                <a href="#">{{item.list1}}</a>
              </li>
                <li>
                  <a href="#">{{item.list2}}</a>
                </li>
                <li>
                  <a href="#">{{item.list3}}</a>
                </li>
                <li>
                  <a href="#">{{item.list4}}</a>
                </li>
                <li>
                  <a href="#">{{item.list5}}</a>
                </li>
                <li>
                  <a href="#">{{item.list6}}</a>
                </li>
            </ul>
            <div class="page-none none-list" id="none">
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">瘦身</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">丰胸</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">养颜</a>
                </li>
              </ul>
              <!-- 二 -->
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">排毒</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">补钙</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">贫血</a>
                </li>
              </ul>
              <!-- 三 -->
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">滋阴</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">壮阳</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">失眠</a>
                </li>
              </ul>
              <!-- 四 -->
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">消暑</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">免疫力</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">养胃</a>
                </li>
              </ul>
              <!-- 五 -->
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">痛经</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">月经不调</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">前列腺</a>
                </li>
              </ul>
              <!-- 六 -->
              <ul class="page-none-ul">
                <li>
                  <a class="page-none-a" href="#">抗衰老</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">防辐射</a>
                </li>
                <li>
                  <a class="page-none-a" href="#">康雾霾</a>
                </li>
              </ul>
            </div>
          </div>
          
    </div>
 </div>
</template>
<script>

import map1 from '../img/imgs/page-middle.jpg'
import map2 from '../img/imgs/page-middle1.jpg'
import map3 from '../img/imgs/page-middle2.jpg'
export default {
  data(){
    return {
      p:[
        {title:"健康",title1:"食疗",title2:"健康首页",src:map1,list1:"大暑养生，清热为主",list2:"梅雨季湿气重，吃什么祛湿？",list3:"没煮熟的食物，小心吃了会中毒",list4:"杂粮养人，多吃多好处",list5:"专题┊那些美颜食物的神级吃法",list6:"专题┊低卡减肥餐，让你瘦到飞起来",},
        {title:"烘焙",title1:"食谱",title2:"烘焙专区",src:map2,list1:"这些挑水果小窍门，你知道吗？",list2:"网红肉松小贝，在家就能做！",list3:"内藏惊喜的彩虹戚风蛋糕",list4:"消耗蛋挞皮－简单版红薯酥",list5:"菜单┊奥利奥的N种百搭吃法",list6:"专题┊另类咸香口儿 满足你的味蕾！",},
        {title:"推荐",title2:"我的收藏",src:map3,list1:"孩子提高免疫力，健康过春季",list2:"划重点！食物降血脂这些更有效",list3:"粗粮细作：健康能量燕麦甜品 ",list4:"妈妈派┊童趣童味，儿童创意餐点",list5:"免费抽奖┊ACA 手持电动打蛋器",list6:"免费抽奖┊ACA TM33HT家用烤箱",}
      ],
      // n:1,
      // liwidth:1035,
      // p:-1
    }
  },
  methods:{

    shiliao(){
      var none=document.getElementById("none");
      var jiangkang=document.getElementById("jiangkang");
      var shiliao=document.getElementById("shiliao");
      none.style.display="block";
      jiangkang.style.color="#666666";
      jiangkang.style.border="none";
      shiliao.style.color="#ff5656";
      shiliao.style.borderBottom="3px solid #ff5656"
    },
    jiangkang(){
      var none=document.getElementById("none");
      var jiangkang=document.getElementById("jiangkang");
      var shiliao=document.getElementById("shiliao");
       none.style.display="none";
       jiangkang.style.color="#ff5656";
       jiangkang.style.borderBottom="3px solid #ff5656";
       shiliao.style.color="#666666";
       shiliao.style.border="none";
    },
    // //右边按钮
    // btnRight(){
    //   //获取对象
    //   var cpList=document.getElementById("cp_list")
    //   var s=this.n++;  
    //   if(this.n==3){
    //     this.n=0; 
    //   }
    //   cpList.style.marginLeft=-s*this.liwidth+"px" 
    // },
    // //左边按钮
    // btnLeft(){
    //   //获取对象
    //   var cpList=document.getElementById("cp_list")
    //   if(this.p<0){this.p=1;} 
    //   var s=this.p--;
    //   cpList.style.marginLeft=-s*this.liwidth+"px" 
    // },
  },
  created(){ 
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
.lunbo-bottom{
  width: 70%;
  min-width: 1100px;
  height: 150px;
  /* border: 1px solid red; */
  margin: 0 auto;
  overflow: hidden;
  position: relative;
}
.lunbo-bottom-content{
  width: 300%;
  height: 150px;
  /* border: 1px solid blue; */
  background: #eeeeee;
}
.lunbo-bom{
  list-style-type: none;
  width: 100%;
}
.lunbo-bom-list{
  width: 31%;
  text-align: left;
  float: left;
  margin-left: 1.6%;
  height: 150px;
}
.lunbo-bom-list h2{
  font-size: 20px;
    line-height: 1.2em;
    padding: 0 0 8px;
    
}
.lunbo-bom-list h2 a{
  color: #333;
  text-decoration: none;
  /* padding-right: 15px; */
    /* line-height: 30px; */
}
.lunbo-bom-list h2 a:hover {
  color: #ff5656;
  text-decoration: underline;
  /* padding-bottom: 10px; */

}
.lunbo-bom-list p{
  color: #333;
    font-size: 12px;
    padding: 0;
    font-size: 14px;
    height: 100px;
}
.lunbo-bom-list p span{
      color: #999;
       font-size: 12px;
}


/*左箭头*/
.left-icon{
  position: absolute;
  width: 30px;
  height: 30px;
  /* border: 1px solid yellow; */
  border-radius: 50%;
  top: 0%;
}
.left-icon img{
  width: 30px;
  height: 30px;

}
.left-icon:hover{
  background: rgb(167, 167, 167)
}

/*右箭头*/
.right-icon{
  position: absolute;
  width: 30px;
  height: 30px;
  /* border: 1px solid yellow; */
  border-radius: 50%;
  top: 35%;
  right: 0;
}
.right-icon img{
  width: 30px;
  height: 30px;

}
.right-icon:hover{
  background: rgb(167, 167, 167)
}


/*中间*/
.page-article{
  width:70%;
  min-width: 1100px;
  height: 410px;
  /* border: 1px solid red; */
  margin: 20px auto;
  display: flex;
  justify-content: space-between;

}
.w3_content1{
  width: 30%;
  height:400px;
  /* border: 1px solid yellow; */
  
  position: relative;
}
.w3_content1_title{
  width: 100%;  
  height: 35px;
  border-bottom: 1px solid #E8E8E8;
}
.w3_jiangkang{
  display: inline-block;
  width: 13%;
  height: 33px;
  /* border:solid 1px seagreen; */
  float: left;
  font-size: 20px;
}
.yangshi{
  color: #ff5656;
  text-decoration: none;
  border-bottom: 3px solid #ff5656;
}
.w3_shiliao{
  display: inline-block;
  width: 13%;
  height: 33px;
  /* border:solid 1px seagreen; */
  float: left;
  font-size: 20px;
  margin-left: 4%;
  color: #666666;
  text-decoration: none;
}
.w3_content1_title_a{
  display: inline-block;
  width: 25%;
  height: 33px;
  /* border:solid 1px seagreen; */
  float: right;
  font-size: 16px;
  color: #333333;
  line-height: 33px;
  text-decoration: none;
}
.w3_content1_title_a:hover{
  color: #ff5656;
}
.w3_middle{
  width: 100%;
  height: 120px;
  margin-top: 3px;
}
.w3_xinwen{
  width: 100%;
  height: 220px;
  /* border: 1px solid goldenrod; */
  margin-top: 5px;
}
.w3_xinwen>li{
  list-style: circle;
  text-align: left;
  margin-left: 10%;
  width: 100%;
  height: 32px;
  margin-top: 5px;
  font-size: 16px;

}
.w3_xinwen>li>a{
  color: #333333;
  text-decoration: none;
}
.w3_xinwen>li:hover a{
  color: #ff5656;
}
/*中间隐藏的两部分*/
.page-none{
   width: 100%;
  height:360px;
  /* border: 1px solid yellow; */
  display: block;
  background: #ffffff;
  position: absolute;
  left: 0;
  top: 40px;
}
.page-none-ul{
  width: 100%;
  height: 42px;
   margin-top: 15px;
  /* border: 1px solid green; */
}
.page-none-ul>li{
  float: left;
  width: 25%;
  height: 40px;
  
  font-size: 18px;
  line-height: 40px;
  margin-left: 15px;
 
  text-align: center;
  
}
.page-none-ul>li>a{
  color: #333333;
  text-decoration: none;
  display: inline-block;
  width: 100%;
  height: 40px;
  border: 1px solid #e1e1e1;
}
.page-none-a:hover {
  color: #ff5656;
  border: 1px solid #ff5656;
}
.none-list{
  display: none;
}

.el-carousel__item{
  height: 200px;
}
  .el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  .el-carousel__container {
    position: relative;
    height: 150px !important;
}


.el-carousel__item {
  background: #eeeeee !important;
}
</style>



