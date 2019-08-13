<template>
<div>
    <header2></header2>
    <div id="login" >        
        <ul id="lbyc">            
            <li class="lb-1">                
                <img src="../img/header/timg03.jpg" />
            </li>            
            <!-- <li class="lb-2">                
                <img src="../img/header/timg03.jpg" />
            </li>            
            <li class="lb-3">                
                <img src="../img/header/timg02.jpg" />
            </li>             
            <li class="lb-4">                
                <img src="../img/header/timg03.jpg" />
            </li>             -->
        </ul> 
        <div class="login_container">
            <div class="login_item">
                <div class="login_nav">
                    <router-link :to="{path:'/Zhuce'}">注册</router-link>
                    <a href="login.html">登录</a>
                </div>
                <div class="login" id="app">
                    <div class="login_left">
                        <ul>
                            <li><span>手机号/昵称：</span><input type="text" class="myinput" :placeholder="unameHolder" v-model="uname"></li>
                            <li><span>密码：</span><input type="password" class="myinput" :placeholder="upwdHolder" v-model="upwd"></li>
                            <li><input  type="checkbox">下次自动登录 <a href="">忘记密码?</a></li>
                            <li><a ><input size="large"  type="submit" value="登录" class="mybutton" @click="login"></a></li>
                        </ul>
                    </div>
                    <div class="login_right">
                        <a href=""><img src="../img/header/msc_app.png" alt="" class="erwei"></a>
                        <p>扫描二维码下&nbsp;载客户端</p>
                        <a href=""><img class="qie" src="../img/nir1.png" alt=""></a>
                        <a href=""><img class="qie" src="../img/nir2.png" alt=""></a>
                        <a href=""><img class="qie" src="../img/nir3.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</template>
<script>
import Header2 from "../Foods/Header"

import '../css/login.css'


export default {
    data(){
        return{
            unameHolder:"请输入用户名",
            upwdHolder:"请输入密码",
            uname:"",
            upwd:"",
        }
    },
    components:{
    "header2":Header2
    },
     // 按回车键实现登录效果
    created() {
    let that = this;
    document.onkeypress = function(e) {
      var keycode = document.all ? event.keyCode : e.which;
      if (keycode == 13) {
        that.login();// 登录方法名
         return false;
      }
    };
  },
    methods:{
        login(){
            // 完成登陆
            // 1.获取用户名和密码
            var u=this.uname;
            var p=this.upwd;
            // 2.创建一个正则表达式
            //   字母数字下划线3~12位
            var reg=/^[a-z0-9_]{3,12}$/i;
            // 3.验证用户名 出错提示
            if(!reg.test(u)){
                this.$toast("用户名格式不正确");
                return;
            }
            // 4.验证密码  出错提示
            if(!reg.test(p)){
                this.$toast("用户密码格式不正确");
                return;
            }
            
            // 5.发送ajax请求
            var url="http://127.0.0.1:8080/login";
            var obj={uname:u,upwd:p};
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result);
                //1.判断服务器返回结果
                if(result.data.cosde>0){
                    // 2.code:>0 条抓Home组件
                    // 3.创建xz/Home.vue组件
                    alert("登陆成功")
                    this.$router.push("/Zhenxuan")
                }else{
                    alert("亲爱的！你写错啦~~")
                }
                // 4.code<0 交互提示框
            });
        }
    }
    
}
</script>

<style>
#lbyc lb-1 img{
    width:100% !important;
    height:100px !important;
    
}
#login{
    width: 100%;
    overflow: hidden;
}
</style>
