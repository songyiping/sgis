<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="1500" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="中国宝武集团韶关钢铁">
<meta name="author" content="中国宝武集团韶关钢铁">
<link rel="icon" href="${basepath}/common/images/logo_favicon.ico">
<title>${systemName}</title>

<!-- Bootstrap core CSS -->
<link href="${basepath}/common/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${basepath}/common/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${basepath}/common/dist/css/sgis.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${basepath}/common/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style type="text/css"></style>
<body>

	<%@include file="../share/header.jsp"%>

	<div class="bg-img" style="margin-top: 100px">
			<img src="${basepath}/common/images/background/gywm.jpg" style="width: 100%; z-index: -1;">	
	</div>
	<div class="container" style="margin-top: -200px; margin-bottom: 50px">
		<!-------------------------------------  超小屏幕隐藏-->
		<div class="col-md-2 hidden-xs">

			<!--  MENU LIST CONTAINER -->
			<div class="list-group subpage-menu-list">
					<a href="${basepath}/common/jsp/common_static/assitantInfo-sgwzq.jsp" class="list-group-item">韶钢网站群</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-yqlj.jsp" class="list-group-item">友情链接</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-flsm.jsp" class="list-group-item">法律声明</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-bzxx.jsp" class="list-group-item active">帮助信息</a>
				</div>
			<!--  MENU LIST CONTAINER END -->

		</div>
		<div class="col-md-10" style="margin-top: 40px; background-color: #FFF">
			<!--  CONTENT CONTAINER -->
			<div class="content-container">
				<!--内容头部-->
				<div class="content-header">
					<!--页面名称-->
					<div class="pageName">
						<h2>帮助信息</h2>

						<ul class="breadcrumb">
							<li><a href="#">首页</a></li>
							<li><a href="#">其他信息</a></li>
							<li><a href="#">帮助信息</a></li>

						</ul>

						<div class="clear"></div>
					</div>
				</div>

				<hr>

				<!--内容主体-->
				<div class="content-body">

					<!-- 辅助信息 -->
					<div class="row assistant-info">

						<div class="col-md-6">

							<h4>应该使用什么浏览器及屏幕分辨率浏览本站？</h4>


							<p>应该使用什么浏览器及屏幕分辨率浏览本站？ 网站最佳字体显示？ 本站建议使用IE8.0以上微软INTERNET浏览器，或其他支持WEB 标准协议的浏览器如Firefox、Chrome、Safari等进行浏览，同时 保证浏览器软件启用 Javascript 功能，本站最低分辨率为1024×768， 最佳分辨率为1920×1080，当显示器分辨率低于1024×768，浏览网 站部分内容会缺失，敬请谅解。</p>

						</div>
						<!-- .col-md-6 END-->

						<div class="col-md-6">

							<h4>如何检索本站的信息？</h4>


							<p>您只需要在本站网页右上角的搜索框内输入关键词，点击"搜索" 按钮，即可实现全站全文检索，同时为了提高检索效果，您可以 在相应栏目内容页中进行分类搜索。</p>

						</div>
						<!-- .col-md-6 END-->

					</div>
					<!-- .row END-->




					<!-- 辅助信息 -->
					<div class="row assistant-info">

						<div class="col-md-6">

							<h4>网站最佳字体显示？</h4>


							<p>本站使用微软雅黑作为本站优先字体，为了达到最佳文字显示效 果，如果您的系统是微软windows XP，请安装微软雅黑字体。</p>
						</div>
						<!-- .col-md-6 END-->

						<div class="col-md-6">

							<h4>如何使用网站向导功能？</h4>


							<p>本站提供了网站向导功能，您可以选择网站最上方的网站向导， 在下拉列表中选取您的身份，可直接引导您进入相关页面。</p>

						</div>
						<!-- .col-md-6 END-->



					</div>
					<!-- .row END-->

					<!-- 辅助信息 -->
					<div class="row assistant-info">

						<div class="col-md-6">

							<h4>网站视频、动画和PDF无法在线浏览？</h4>


							<p>本站使用了FLV格式视频、RM流媒体视频新闻和PDF形式的出版 物，如果你无法查看相关内容，请根据网页上的提示按钮安装相 应软件插件后刷新查看。</p>
						</div>
						<!-- .col-md-6 END-->

						<div class="col-md-6">

							<h4>如何打印网站内容页？</h4>


							<p>本站提供内容页打印服务。您可以点击内容页右下方的"Print"按 钮进行打印。</p>

						</div>
						<!-- .col-md-6 END-->

					</div>
					<!-- .row END-->


					<!-- 辅助信息 -->
					<div class="row assistant-info">

						<div class="col-md-6">

							<h4>浏览时页面出现乱码如何处理？</h4>


							<p>在浏览网页时如出现乱码，您可以检查浏览器的"编码"设置，确 保选择"简体中文GB2312"。</p>
						</div>
						<!-- .col-md-6 END-->

						<div class="col-md-6">

							<h4>网页为什么打不开？</h4>


							<p>如果您通过局域网上网时，由于局域网通往外部的出口带宽限 制，连接网站时会发生超时错误导致网页打不开。如遇到上述问 题，请您刷新页面或更换时间登陆。</p>

						</div>
						<!-- .col-md-6 END-->

					</div>
					<!-- .row END-->













				</div>

			</div>
			<!--  CONTENT CONTAINER END -->
		</div>

		<!-------------------------------------  超小屏幕可见-->
		<div class="col-md-2 visible-xs">
			
				<div class="list-group subpage-menu-list">
					<a href="${basepath}/common/jsp/common_static/assitantInfo-sgwzq.jsp" class="list-group-item">韶钢网站群</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-yqlj.jsp" class="list-group-item">友情链接</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-flsm.jsp" class="list-group-item">法律声明</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-bzxx.jsp" class="list-group-item active">帮助信息</a>
				</div>
	
		</div>

	</div>

	<%@include file="../share/footer.jsp"%>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${basepath}/common/assets/js/vendor/jquery.min.js"></script>
	<script src="${basepath}/common/dist/js/bootstrap.min.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${basepath}/common/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

