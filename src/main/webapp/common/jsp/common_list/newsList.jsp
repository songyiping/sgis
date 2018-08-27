<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link rel="icon" href="images/logo_favicon.ico">
<title>${systemName}</title>

<!-- Bootstrap core CSS -->
<link href="${basepath}/common/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${basepath}/common/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${basepath}/common/dist/css/sgis.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="assets/js/ie-emulation-modes-warning.js"></script>

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
		<c:if test="${firstBar.newsTypeId eq 'h'}">
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
		<div class="col-md-10" style="margin-top: 40px; background-color: #FFF">
			<!--  CONTENT CONTAINER -->
			<div class="content-container">
				<!--内容头部-->
				<div class="content-header">
					<%@include file="../share/pageName.jsp"%>
				</div>
				<!-- content-header end -->


			</div>
			<hr>

			<!--内容主体-->
			<div class="content-body">

				<!--  DIRECTORY LIST  -->
				<div class="directory-list">

					<table class="table">
						<thead>
							<tr>
								<th>编号</th>
								<th>标题</th>
								<th>日期</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach varStatus="varStatus" items="${pageNews.datas}" var="news">

								<c:set var="num" value="${num + 1}">
								</c:set>
								<tr>
									<td>${num}</td>
									<td><c:choose>
											<c:when test="${fn:length(news.mainTitle) >= 35}">
												<a href="${basepath}/check/${news.newsId}.do" target="_blank" title="${news.mainTitle}"> ${fn:substring(news.mainTitle,0,34)}...</a>
											</c:when>
											<c:otherwise>
												<a href="${basepath}/check/${news.newsId}.do" target="_blank" title="${news.mainTitle}">${news.mainTitle}</a>
											</c:otherwise>
										</c:choose></td>
									<td><fmt:formatDate value="${news.createTime}" pattern="yyyy/MM/dd"></fmt:formatDate></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<!--  DIRECTORY LIST  END  -->

				<hr>

				<!-- 分页信息 -->
				<%@include file="../share/pageNews.jsp"%>
				<!-- 分页信息 -->

				<!-- 打印和置顶 -->
				<%@include file="../share/printPage.jsp"%>
				<!-- 打印和置顶 -->
			</div>
			<!--内容主体 结束-->

		</div>
		<!--  CONTENT CONTAINER END -->
	</div>

	<!-------------------------------------  超小屏幕可见-->
	<div class="col-md-2 visible-xs">
		<!-- 二级导航 -->
		<%@include file="../share/secondBar.jsp"%>
		<!-- 二级导航 -->
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
