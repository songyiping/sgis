<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
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
		<c:if test="${firstBar.newsTypeId eq 'a'}">
			<img src="${basepath}/common/images/background/gywm.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'b'}">
			<img src="${basepath}/common/images/background/ywgh.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'c'}">
			<img src="${basepath}/common/images/background/mtzx.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'd'}">
			<img src="${basepath}/common/images/background/ddjs.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'e'}">
			<img src="${basepath}/common/images/background/shzr.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'f'}">
			<img src="${basepath}/common/images/background/ygfz.jpg" style="width: 100%; z-index: -1;">
		</c:if>
		<c:if test="${firstBar.newsTypeId eq 'g'}">
			<img src="${basepath}/common/images/background/lxwm.jpg" style="width: 100%; z-index: -1;">
		</c:if>

	</div>
	<div class="container" style="margin-top: -200px; margin-bottom: 50px">
		<!-------------------------------------  超小屏幕隐藏-->
		<div class="col-md-2 hidden-xs">
			<!-- 二级导航 -->
			<%@include file="../share/secondBar.jsp"%>
			<!-- 二级导航 -->
		</div>

		<!-------------------------------------  超小屏幕隐藏-->

		<div class="col-md-10" style="margin-top: 40px; background-color: #FFF">
			<!--  CONTENT CONTAINER -->
			<div class="content-container">
				<!--内容头部-->
				<div class="content-header">
					<!--页面名称-->
					<%@include file="../share/pageName.jsp"%>
				</div>

				<hr>
				<!--内容主体-->
				<div class="content-body">
					<div class="row">
						<div class="col-md-12">
							<!--  PROFILE PANEL  视频矩阵-视频列表面板 -->
							<div class="profile-panel">
								<div class="profile-panel-text">
									<h4>${newsCheck.mainTitle}</h4>
								</div>
								<video src="${basepath}/${newsCheck.videoList[0].url}" width="100%" controls> Your browser does not support the video tag.
								</video>
								<span>${newsCheck.text}</span>

							</div>
							<!--  PROFILE PANEL  END -->

						</div>
					</div>
				</div>
				<hr>
				<!-- 打印和置顶 -->
				<%@include file="../share/printPage.jsp"%>
				<!-- 打印和置顶 -->

			</div>

		</div>
		<!--  CONTENT CONTAINER END -->
	</div>

	<!-------------------------------------  超小屏幕可见-->
	<div class="col-md-2 visible-xs">

		<!--  MENU LIST CONTAINER -->
		<div class="col-md-2 hidden-xs">
			<!-- 二级导航 -->
			<%@include file="../share/secondBar.jsp"%>
			<!-- 二级导航 -->
		</div>
		<!--  MENU LIST CONTAINER END -->

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
