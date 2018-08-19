<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
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
	<section>
		<!-- left side start-->
		<%@include file="../share/newsInfMenu2.jsp"%>

		<!-- left side end-->

		<!-- main content start-->
		<div class="main-content">

			<%@include file="../share/header.jsp"%>


			<!--body wrapper start-->
			<section class="wrapper">
				<!-- page start-->

				<style type="text/css">
.select-panel {
	padding: 10px
}

.select-panel thead {
	background-color: #666;
	color: #fff
}

.select-panel table tbody {
	font-weight: normal;
	background-color: #FFF;
}

.select-panel table tbody tr td a {
	font-weight: bold;
	color: #555;
}

.select-panel table tbody tr td a:hover, .select-panel table tbody tr td a:focus
	{
	text-decoration: none;
	color: #65CEA7;
}

table tbody tr .active {
	background-color: rgba(255, 255, 255, 0)
}
</style>
				<!--新闻基本信息 start-->
				<div class="row">
					
					<%@include file="model_firstList.jsp"%>

					<%@include file="model_secondList.jsp"%>
					
					<%@include file="model_thirdList.jsp"%>

					

				</div>
				<!-- end row-->

				<%@include file="../share/footer.jsp"%>
				<!-- Modal -->

				<script type="text/javascript">
					function checkNewsType() {

						var name = document.getElementById("name").value;
						var enName = document.getElementById("enName").value;
						var text = document.getElementById("text").value;
						if (name == "") {
							alert("类名不能为空");
							return false;
						}
						if (enName == "") {
							alert("英文名不能为空");
							return false;
						} else {
							return true;
						}
					}
				</script>


				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
					tabindex="-1" id="myModal" class="modal fade">
					<form action="newsTypeInf_add.action" method="post"
						onsubmit="return checkNewsType();">
						<table>
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">新增新闻类型</h4>
									</div>
									<div class="modal-body">
										<p>输入相应的信息：</p>
										<input type="hidden" class="input" name="newsTypeInf.parentId"
											value="AAA" /> <input id="name" style="margin-bottom: 10px"
											type="text" name="newsTypeInf.name"
											value="${newsTypeInf.name}" class="form-control"
											placeholder="分类名" maxlength="20"> <input id="id"
											style="margin-bottom: 10px" type="text" name="newsTypeInf.id"
											value="${newsTypeInf.id}" class="form-control"
											placeholder="编码" maxlength="20"> <input id="enName"
											style="margin-bottom: 10px" type="text"
											name="newsTypeInf.enName" value="${newsTypeInf.enName}"
											class="form-control" placeholder="英文名" maxlength="20">
										<input id="text" type="text" name="newsTypeInf.text"
											value="${newsTypeInf.text}" class="form-control"
											placeholder="类别" maxlength="20">
									</div>
									<div class="modal-footer">
										<button data-dismiss="modal" class="btn btn-default"
											type="button">取消</button>
										<button type="submit" class="btn btn-success">提交</button>
									</div>
								</div>
							</div>
						</table>
					</form>

				</div>



				<!-- modal -->



				<!-- main content end-->
			</section>

			<!-- Placed js at the end of the document so the pages load faster -->
			<%@include file="../share/share_js.jsp"%>
</body>
</html>
