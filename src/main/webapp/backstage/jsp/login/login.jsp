<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    int port = request.getServerPort();
    
    String basepath  = "";
    
    if(port==80){
        basepath = request.getScheme()+"://"+request.getServerName()+path;
    }else{
        basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    }
     
    String system_name = "韶关钢铁网站管理平台";
    session.setAttribute("systemName", system_name);
    session.setAttribute("basepath", basepath);

%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>登陆-${systemName}</title>

<%@include file="../share/share_css.jsp" %>	
<%@include  file="../share/share_js.jsp" %>

<script type="text/javascript" src="${basepath}/backstage/js/jquery-1.10.2.min.js"></script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    

</head>


<body class="login-body">
<script type="text/javascript">

     function changeImage(){
    	 $("#changeImage").attr("src", "${basepath}/check_code.do?t=" + genTimestamp());
     }

    function genTimestamp() {  
                var time = new Date();  
                return time.getTime();  
            }
</script>
<div class="container">

    <form class="form-signin" method="post">
        <div class="form-signin-heading text-center">
            <div class="sign-title">
              <h1>${systemName}</h1>
            </div>
            
            <img src="${basepath}/backstage/images/login-logo.png" alt=""/>
            <h2 style="color:#555" >登录</h2>
           
        </div>
        <div class="login-wrap">
             
            <h4 style="color:red;font-weight:bold;"><div id="messBox">&nbsp;</div></h4>
            <input id="username" name="username" type="text" class="form-control" placeholder="登陆账号">
            <input id="password" name="password" type="password" class="form-control" placeholder="登陆密码">
            <input id="check_code" name="check_code" type="text"  placeholder="验证码" style="width:180px; padding:10px">
            <span style="margin-left:20px">
            <a href="javascript:changeImage();"><img tyle="height:33px;width:80px" id="changeImage" src="${basepath}/check_code.do" alt="点击更换"  
                                title="点击更换" /></a>                                
            </span>
            <a  class="btn btn-lg btn-login btn-block" onclick="loginFunction();">
                 <i class="fa fa-check" ></i> 
            </a>

            <div class="registration">
                还没有注册？
                <a class="" href="">
                    马上注册
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> 记住我
                <span class="pull-right">
                    <a data-toggle="modal" href="#"> 忘记密码?</a>

                </span>
            </label>
       
        </div>
    
 
                

    </form>
</div>


</body>

<script type="text/javascript" >
 //页面点击登录按钮
function loginFunction() {

    var username= $('#username').val();
    var password=$('#password').val();
    var checkCode = $('#check_code').val().toUpperCase();;

        if (username == "" || password == "" || checkCode == "") {

              if (username == "") {
                $("#username").focus();
                document.getElementById("messBox").innerHTML = "用户名不能为空！";
            }
            if (password == "") {
                $("#password").focus();
                document.getElementById("messBox").innerHTML = "密码不能为空！";
            }
            if (checkCode == "") {
                $("#checkCode").focus();
                document.getElementById("messBox").innerHTML = "验证码不能为空！";
            }
              
           
        }else 
        {
		 jQuery.ajax({
         cache: false,
         type: "get",
         dataType:"json",
         url: '${basepath}/tologin.do',
         data: "username=" + escape(username) + "&password=" + escape(password)+ "&checkCode=" + escape(checkCode),
         success: function (msg)
         {                  
         	 if(msg.result == "password_success"){
         		document.getElementById("messBox").innerHTML = "登录中.....";
            	window.location.href='${basepath}/home.do';
         	}else if(msg.result == "password_error"){
         		document.getElementById("messBox").innerHTML = "账号或密码错误！";
         	}	
            else if(msg.result =="checkCode_error"){
            	document.getElementById("messBox").innerHTML = "验证码错误！";
            	changeImage();
            	
            }else{
            	document.getElementById("messBox").innerHTML = "未知错误！";
            } 
         }, 
         error:function(){
         	document.getElementById("messBox").innerHTML = "网络错误！请检查网络重试。";
          }
	 
          });//jquery.ajax_end
        }      	  
 }
</script>

</html>
