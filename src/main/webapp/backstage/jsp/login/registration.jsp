<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp" %>	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>注册-${systemName}</title>
    
<%@include file="../share/share_css.jsp" %>	
<%@include  file="../share/share_js.jsp" %>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="index.html">
        <div class="form-signin-heading text-center">
            <div class="sign-title">
              <h1>${systemName}</h1>
            </div>
            <img src="${basePath}/backstage/images/login-logo.png" alt=""/>
            <h2 style="color:#555;">注册</h2>
        </div>


        <div class="login-wrap">
            <p>请输入您的个人基本信息</p>
            <input type="text" autofocus placeholder="姓名" class="form-control">
            <input type="text" autofocus placeholder="工号" class="form-control">
            <input type="text" autofocus placeholder="宝钢邮箱" class="form-control">
            <input type="text" autofocus placeholder="所在单位" class="form-control">
            <div class="radios">
                <label for="radio-01" class="label_radio col-lg-6 col-sm-6">
                    <input type="radio"  value="1" id="radio-01" name="sample-radio"> 男性
                </label>
                <label for="radio-02" class="label_radio col-lg-6 col-sm-6">
                    <input type="radio" value="1" id="radio-02" name="sample-radio"> 女性
                </label>
            </div>
            
            <hr>

            <p> 请输入您的账号信息</p>
            <input type="text" autofocus placeholder="账号" class="form-control">
            <input type="password" placeholder="密码" class="form-control">
            <input type="password" placeholder="确认密码" class="form-control">
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 我同意服务条款和隐私政策。
            </label>
            <button type="submit" class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
               我已注册
                <a href="toLogin.action" >
                    登录
                </a>
            </div>

        </div>

    </form>

</div>


</body>
</html>
