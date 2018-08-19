<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="row">
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
					<hr>
				</div>
				<!-- content-container -->
				<!--内容主体-->
				<div class="content-body">
					<!--年份-->
					<div>
						<ul class="media-digest-year">

							<li class="active"><a href="#">2018</a></li>
							<li><a href="#">2019</a></li>
							<li><a href="#">2020</a></li>
						</ul>
					</div>
					<!-- 获得系统时间 -->
					<jsp:useBean id="now" class="java.util.Date" />
					<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM" var="today" />

					<div class="classified-tab">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<c:forEach var="num" begin="1" end="12" step="1">
								<c:choose>
									<c:when test="${today eq num}">
										<li role="presentation" class="active"><a href="#${num}" aria-controls="1" role="tab" data-toggle="tab">${num}月</a></li>
									</c:when>
									<c:otherwise>
										<li role="presentation"><a href="#${num}" aria-controls="1" role="tab" data-toggle="tab">${num}月</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>

						</ul>
						<hr>



						<!-- Tab panes -->
						<div class="tab-content ">
							<c:forEach var="num" begin="1" end="12" step="1">
								<c:choose>
									<c:when test="${today eq num}">
										<div role="tabpanel" class="tab-pane active" id="${num}">
									</c:when>
									<c:otherwise>
										<div role="tabpanel" class="tab-pane" id="${num}">
									</c:otherwise>
								</c:choose>

								<!--media contents-->
								<!--  DIRECTORY LIST  -->
								<div class="media-digest-table">
									<table class="table">
										<tbody>
											<c:forEach items="${pageNews.datas}" var="news">
												<c:set var="time">
													<fmt:formatDate pattern="MM" value="${news.createTime}" />
												</c:set>
												<c:if test="${time eq num}">
													<tr>
														<th scope="row"><fmt:formatDate pattern="MM/dd" value="${news.createTime}" /></th>
														<td><a href="${news.text}">${news.mainTitle}</a></td>
														<td><a href="${news.text}">${news.secondTitle}</a></td>
														<td>${news.author}</td>
													</tr>
												</c:if>
											</c:forEach>
										</tbody>
									</table>
								</div>
						</div>
						</c:forEach>

						<hr>

						<!-- 打印和置顶 -->
						<%@include file="../share/printPage.jsp"%>
						<!-- 打印和置顶 -->

					</div>
					<!-- classified-tab END -->


				</div>
				<!--  主体内容结束 -->
			</div>

			<!-------------------------------------  超小屏幕可见-->
			<div class="col-md-2 visible-xs">
				<!-- 二级导航 -->
				<%@include file="../share/secondBar.jsp"%>
				<!-- 二级导航 -->
			</div>
		</div>
	</div>

	</div>

	<script type="text/javascript">
		function printpage() {
			window.print()
		}
	</script>

	<script type="text/javascript">
		function totop() {
			document.body.scrollTop = document.documentElement.scrollTop = 0;
		}
	</script>

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
