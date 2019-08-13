<template>
<div>
  <Headers></Headers>
  <!-- 表头 -->
    <div id="biaotou">
        <div id="biaotou_1">
            <a href="#">
                <img class="biao_tu" src="../img/logo.png" alt="">
            </a>
            <a href="#">
                <div class="biaoqian">菜谱</div>
            </a>
            <ul id="tab" class="biaotou_2">
                <li data-toggle="tab" data-id="channei_1" class="yes caishou">菜谱首页</li>
                <!-- <li class="yes_1" data-toggle="tab" data-id="channei_2"><router-link :to="{path:''}">分类</router-link></li> -->
                <li data-toggle="tab" data-id="channei_3">分类</li>
                <li data-toggle="tab" data-id="channei_3">菜单</li>
                <li data-toggle="tab" data-id="channei_4">排行</li>
            </ul>   
        </div>
    
    <div class="neirong">
        <!-- 菜谱首页 -->
        <div class="neirong_1" id="channei_1">
            <div id="leibiao">
                <p>首页</p>
                <ul class="leibiao lb">
                  <li><a href="#">热菜</a> </li> 
                <li><a href="#">凉菜</a></li>  
                  <li><a href="#">汤羹</a></li>
                  <li><a href="#">注释</a> </li>
                  <li><a href="#">小吃</a></li> 
                  <li><a href="#">西餐</a> </li>
                  <li><a href="#">烘培</a> </li>
                  <li><a href="#">饮品</a></li>
                  <li><a href="#">零食</a> </li>
                  <li><a href="#">泡菜腌菜</a></li> 
                  <li><a href="#">自制食材</a> </li>
                  <li><a href="#">最新菜谱</a> </li>
                </ul>
            </div>
        </div>
    </div>
    </div>




  <div class="cp">
     <div class="zl">
        <ul id="cp_list" >
          <li><a><img src="../img/recipe/c320 (5).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a><img src="../img/recipe/c320 (4).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a   ><img src="../img/recipe/c320 (3).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (2).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (1).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (6).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320.jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (7).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (8).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (9).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (10).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
          <li><a  ><img src="../img/recipe/c320 (11).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>

          <div class="ddd"></div>
        </ul>
        <div id="Left_btn"  @click="btnLeft()" class="Left_btn"><img src="../img/recipe/left.png" alt=""></div>
        <div id="right_btn" @click="btnRight()" class="right_btn"><img src="../img/recipe/right.png" alt=""></div>
      </div>
      <div class="repice_nav">
        <ul class="nav_list">
          <li><a href="javascript:;"><img src="../img/recipe/r01.jpg" alt=""><p>一周最热</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r02.jpg" alt=""><p>人气菜肴</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r03.jpg" alt=""><p>夏季菜谱</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r04.jpg" alt=""><p>高颜值</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r05.jpg" alt=""><p>快手菜</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r06.jpg" alt=""><p>早餐</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r07.jpg" alt=""><p>家常菜谱</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r08.jpg" alt=""><p>烘焙大全</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r09.jpg" alt=""><p>亲子专区</p></a></li>
          <li><a href="javascript:;"><img src="../img/recipe/r10.jpg" alt=""><p>所有菜谱</p></a></li>
        </ul>
      </div>
      <span @click="rtp" class="all-f">全部分类</span>
      <div id="apps">
        
        <div id="r_title" class="repice_title">
          <el-tabs v-model="activeName" @tab-click="handleClick">
            <el-tab-pane label="最新发布" name="first">
                <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="热菜" name="second">
              <div class="cp_list" >   
                  <div class="foods" v-for="(s,i) of list2" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+s.pic" alt="">
                    </a>
                    <a class="cao"><p>{{s.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{s.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao2()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="凉菜" name="third">
              <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list3" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao3()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="汤羹" name="fourth">
              <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list4" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao4()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="主食" name="fifth">
              <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="小吃" name="sixth">             
              <div class="cp_list" >   
                  <div class="foods" v-for="(s,i) of list2" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+s.pic" alt="">
                    </a>
                    <a class="cao"><p>{{s.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{s.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao2()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="西餐" name="seventh">        <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list3" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao3()" class="more">查看更多</button>
            </el-tab-pane>
            <el-tab-pane label="烘焙" name="eighth">            
             <div class="cp_list" >   
                  <div class="foods" v-for="(p,i) of list4" :key="i">
                    <a href="javascirpt:;" class="a01">
                      <img :src="'http://127.0.0.1:8080/img/'+p.pic" alt="">
                    </a>
                    <a class="cao"><p>{{p.title}}</p></a>  
                    <a class="cao1" ><small class="cao1">{{p.author}}</small></a>     
                  </div>
                </div>
                <button @click="cao4()" class="more">查看更多</button>
            </el-tab-pane>
          </el-tabs>   
        </div>
      </div>
  </div>
  <footrr></footrr>
</div>
</template>

<script>

//引入css样式
import "../css/recipe.css"
//引入头部组件
import Header from "./Header"
import Footrr from "./Footr"
export default {
  data(){
    return{
      list:[],
      list2:[],
      list3:[],
      list4:[],
      activeName:'first',
      n:1,
      liwidth:1035,
      p:-1,
      pno:0,
      ps:8,
      pno2:0,
      ps2:8,
      pno3:0,
      ps3:8,
      pno4:0,
      ps4:8,
      
    }
  },
  components:{
    "Headers":Header,
    "footrr":Footrr
  },
  methods:{
    rtp(){
     this.$router.push('/Recipe-type') 
    },
    handleClick(tab,event) {
       
    },
    //右边按钮
    btnRight(){
      //获取对象
      var cpList=document.getElementById("cp_list")
      var s=this.n++;  
      if(this.n==4){
        this.n=0; 
      }
      cpList.style.marginLeft=-s*this.liwidth+"px" 
    },
    //左边按钮
    btnLeft(){
      //获取对象
      var cpList=document.getElementById("cp_list")
      if(this.p<0){this.p=3;} 
      var s=this.p--;
      cpList.style.marginLeft=-s*this.liwidth+"px" 
    },
    // loadMore(){
    //   var url="http://127.0.0.1:8080/zx/recipe"
    //   this.axios.get(url).then(res=>{
    //     this.list=res.data.data
    //   })
    // },
    cao(){
      var url="http://127.0.0.1:8080/zx/recipe1";
      this.pno++;
      var obj={pno:this.pno,pageSize:this.ps}
      this.axios.get(url,{params:obj}).then(result=>{
        var rows=this.list.concat(result.data.data);
        this.list=rows;
        console.log(rows)
      })
    },
    cao2(){
      var url="http://127.0.0.1:8080/zx/recipe2";
      this.pno2++;
      var obj={pno:this.pno2,pageSize:this.ps2}
      this.axios.get(url,{params:obj}).then(result=>{
        var rows=this.list2.concat(result.data.data);
        this.list2=rows;
        console.log(rows)
        console.log(result)
      })
    },
    cao3(){
      var url="http://127.0.0.1:8080/zx/recipe3";
      this.pno3++;
      var obj={pno:this.pno3,pageSize:this.ps3}
      this.axios.get(url,{params:obj}).then(result=>{
        var rows=this.list3.concat(result.data.data);
        this.list3=rows;
        console.log(rows)
      })
    },
    cao4(){
      var url="http://127.0.0.1:8080/zx/recipe4";
      this.pno4++;
      var obj={pno:this.pno4,pageSize:this.ps4}
      this.axios.get(url,{params:obj}).then(result=>{
        var rows=this.list4.concat(result.data.data);
        this.list4=rows;
        console.log(rows)
      })
    },
    
  },
  computed:{
      
  },
  created(){ 
    // this.loadMore() ;
    this.cao()
    this.cao2()
    this.cao3()
    this.cao4()
  }
}
</script>

<style>
  .cc1{
    transition: all 1s linear;
  }
  .all-f{    
    float: right;
    margin-top: 12px;
    text-decoration: none;
    color:#666666;
    font-size: 16px;
    cursor: pointer;
  }
  .all-f:hover{
    color:#ff838b
  }
  .el-tabs__item:not(.is-disabled):hover{color:#ff838b}
  .el-tabs__item.is-active{color:#ff838b !important}
  .el-tabs__active-bar{background-color:#ff838b !important;}
</style>
