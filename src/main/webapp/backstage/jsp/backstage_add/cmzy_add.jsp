
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<title>${newsType.newsTypeName}-新增</title>

<%@include file="../share/share_css.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${basepath}/backstage/css/bootstrap-fileupload.min.css" />

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
					${newsType.newsTypeName} <small>新增</small>
				</h3>
			</div>
			<!-- page heading end-->

			<!--body wrapper start-->
			<div class="wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="square-widget">
							<div class="widget-container">
								<div class="stepy-tab"></div>
								<form id="default" action="${basepath}/news/add.do"
									class="form-horizontal" method="post"
									onsubmit="return checkFrm();">


									<legend>Information</legend>
									<div class="form-group">
										<label class="col-md-2 col-sm-2 control-label">文章主标题：</label>
										<div class="col-md-6 col-sm-6">
											<input type="text" name="mainTitle" class="form-control"
												maxlength="48">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 col-sm-2 control-label">传媒名称：</label>
										<div class="col-md-6 col-sm-6">
											<input type="text" name="secondTitle" class="form-control"
												maxlength="50">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 col-sm-2 control-label">文章作者：</label>
										<div class="col-md-6 col-sm-6">
											<input type="text" name="author" class="form-control"
												maxlength="50">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 col-sm-2 control-label">文章超链接：</label>
										<div class="col-md-6 col-sm-6">
											超链接应该包含http:// 或https:// <input type="text" name="text"
												class="form-control" maxlength="400">
										</div>
									</div>
									<input type="hidden" name="newsType.newsTypeId"
										value="${newsType.newsTypeId}" /> <input type="hidden"
										name="newsType.newsTypeName" value="${newsType.newsTypeName}" />
									<input type="hidden" name="user.userId" value="${user.userId}" />
									<input type="hidden" name="newsId" value="${uuid}" />


									<button type="submit" class="btn btn-info finish">保存</button>


								</form>
							</div>
						</div>
					</div>
				</div>



				<%@include file="../share/footer.jsp"%>
			</div>

		</div>
		<!-- main content end-->
	</section>
</body>
</html>
