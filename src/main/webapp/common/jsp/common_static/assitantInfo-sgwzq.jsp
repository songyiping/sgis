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
					<a href="${basepath}/common/jsp/common_static/assitantInfo-sgwzq.jsp" class="list-group-item active">韶钢网站群</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-yqlj.jsp" class="list-group-item">友情链接</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-flsm.jsp" class="list-group-item">法律声明</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-bzxx.jsp" class="list-group-item">帮助信息</a>
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
						<h2>韶钢网站群</h2>

						<ul class="breadcrumb">
							<li><a href="#">首页</a></li>
							<li><a href="#">其他信息</a></li>
							<li><a href="#">韶钢网站群</a></li>

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
							<div>
								<h4>钢铁主业板块</h4>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">宝武集团</a>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">宝钢股份</a>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">八一钢铁</a>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">梅山钢铁</a>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">宝钢特种材料有限公司</a>
							</div>
						</div>
						<!-- .col-md-6 END-->
						<div class="col-md-6">
							<div>
								<h4>多元子公司板块</h4>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">昆仑科技</a>
							</div>
							<div class="col-md-6 website-link">
								<a href="#">韶钢工程</a>
							</div>
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
					<a href="${basepath}/common/jsp/common_static/assitantInfo-sgwzq.jsp" class="list-group-item  active">韶钢网站群</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-yqlj.jsp" class="list-group-item">友情链接</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-flsm.jsp" class="list-group-item">法律声明</a> 
					<a href="${basepath}/common/jsp/common_static/assitantInfo-bzxx.jsp" class="list-group-item">帮助信息</a>
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

