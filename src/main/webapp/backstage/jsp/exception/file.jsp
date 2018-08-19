
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../share/taglib.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>${newsType.newsTypeName}-管理-${systemName}</title>

<%@include file="../share/share_css.jsp"%>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

	<section>


		<%@include file="../share/newsInfMenu.jsp"%>

		<!-- main content start-->
		<div class="main-content">

			<%@include file="../share/header.jsp"%>

			<!-- page heading start-->
			<div class="page-heading" style="border-bottom: 1px solid #CCC">
				<h3>
					${newsType.newsTypeName} <small>管理列表</small>
				</h3>


			</div>
			<!-- page heading end-->

			<!--body wrapper start-->
			<section class="wrapper">
				<!-- page start-->

				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<div align="center">
							<br>
								<h2>${exception}</h2>
							</div>

							<br>

						</section>
					</div>
				</div>



				<!-- page end-->
			</section>
			<!--body wrapper end-->

			<%@include file="../share/footer.jsp"%>

		</div>
		<!-- main content end-->
	</section>

	<%@include file="../share/share_js.jsp"%>

</body>
</html>
