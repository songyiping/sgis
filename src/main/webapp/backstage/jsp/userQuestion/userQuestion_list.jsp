<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">
<title>最新资讯-编辑-韶关钢铁网站管理平台</title>

<!--file upload-->
<%@include file="../share/share_css.jsp"%>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

	<!-- left side start-->
	<%@include file="../share/newsInfMenu2.jsp"%>

	<!-- left side end-->

	<!-- main content start-->
	<div class="main-content">

		<%@include file="../share/header.jsp"%>



		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row col-sm-12">
				<section class="panel">
					<header class="panel-heading"> 用户意见收集列表 </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered" id="hidden-table-info">
								<thead>
									<th>详细信息</th>
									<th class="hidden-phone">姓名</th>
									<th class="hidden-phone">Email</th>
									<th>操作</th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									<th style="display:none;"></th>
									
								</thead>
								<tbody>
									<c:forEach items="${pageNews.datas}" var="temp">
										<tr class="gradeX">

											<td>${temp.text}</td>
											<td class="hidden-phone">${temp.name}</td>
											<td class="hidden-phone">${temp.email}</td>
											<td>删除</td>
											<td style="display:none;">${temp.ip}</td>
											<td style="display:none;">${temp.address}</td>
											<td style="display:none;">${temp.userAgent}</td>
											<td style="display:none;">${temp.osName}</td>
											<td style="display:none;">${temp.createTime}</td>
											<td style="display:none;">${temp.user.userName}</td>
											<td style="display:none;">${temp.handlingTime}</td>
											<td style="display:none;">${temp.remark}</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>

						</div>
					</div>
				</section>
			</div>

			<!--body wrapper end-->

			<%@include file="../share/footer.jsp"%>
		</div>

		<!-- Placed js at the end of the document so the pages load faster -->
		<%@include file="../share/share_js.jsp"%>
		<!--dynamic table-->
		<script type="text/javascript" language="javascript" src="${basepath}/backstage/js/jquery.dataTables.js"></script>
		<script type="text/javascript" src="${basepath}/backstage/js/DT_bootstrap.js"></script>
		<!--dynamic table initialization -->
		<script src="${basepath}/backstage/js/dynamic_table_init.js"></script>
</body>
</html>
