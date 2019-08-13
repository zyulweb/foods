<template>
    <div>
        <header3></header3>
    <div id="login" >        
        <ul id="lbyc">            
            <!-- <li class="lb-1">                
                <img src="imgs/timg01.jpg" />
            </li>            
            <li class="lb-2">                
                <img src="imgs/timg02.jpg" />
            </li>            
            <li class="lb-3">                
                <img src="imgs/timg03.jpg" />
            </li>              -->
            <li class="lb-4">                
                <img src="../img/header/timg03.jpg" />
            </li>            
        </ul> 
        <div class="login_container">
                <div class="login_item">
                    <div class="login_nav">
                        <a href="register.html">注册</a>
                        <a href="login.html">登录</a>
                    </div>
                    <div class="login">
                        <div class="login_left">
                            <p>欢迎使用第三方账号注册/登录美食天下</p>
                            <a href=""><img src="../img/header/nir1.png" alt=""></a>
                            <a href=""><img src="../img/header/nir3.png" alt=""></a>
                            <a href=""><img src="../img/header/nir2.png" alt=""></a>
                        </div>
                        <div class="login_right">
                            <a href=""><img src="../img/header/app.png" alt=""></a>
                            <p>扫描二维码下载客户端</p>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>
</template>
<script>
import Header3 from "../Foods/Header"

import '../css/reg.css'


export default {
    data(){
        return{

        }
    },
    components:{
        "header3":Header3
    }
}
</script>
<style>

</style>
