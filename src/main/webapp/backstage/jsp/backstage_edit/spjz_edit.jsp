 <%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../share/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>${newsType.newsTypeName}-新增</title>

<%@include file="../share/share_css.jsp"%>
<link rel="stylesheet" type="text/css" href="${basepath}/backstage/css/bootstrap-fileupload.min.css" />

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
								 <form  id="default" action="${basepath}/news/edit.do" class="form-horizontal" method="post" onsubmit="return checkFrm();">
								
									<fieldset title="基本信息">
										<legend>Personal Information</legend>
										<div class="form-group">
											<label class="col-md-2 col-sm-2 control-label">视频标题：</label>
											<div class="col-md-6 col-sm-6">
												<input type="text" value="${news.mainTitle}" name="mainTitle" class="form-control" maxlength="48">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 col-sm-2 control-label">视频作者：</label>
											<div class="col-md-6 col-sm-6">
												<input type="text" value="${news.author}" name="author" class="form-control" maxlength="50">
											</div>
										</div>
										
										<input type="hidden" name="newsType.newsTypeId" value="${newsType.newsTypeId}" /> 
										<input type="hidden" name="newsType.newsTypeName" value="${newsType.newsTypeName}" /> 
										<input type="hidden" name="user.userId" value="${user.userId}" />
										<input type="hidden" name="newsId" value="${uuid}" />
									</fieldset>
									<fieldset title="导航图片处理">
										<legend>image imformation</legend>
										<label class="col-md-2 col-sm-2 control-label">上传结果预览：
										<br><legend style="color: red">请设置比例为3：2</legend>
										</label>
										<div class="col-md-10 col-sm-10">
										<c:set var="myWidth" value="600"></c:set>
										<c:set var="myHeight" value="400"></c:set>
											<%@include file="../share/share_js.jsp"%>
											<%@include file="../share/upload/uploadImage.jsp"%>
										</div>
									</fieldset>
									<fieldset title="视频上传">
										<legend>Video Information</legend>
										<label class="col-md-2 col-sm-2 control-label">
										以上传视频不能修改！
										<br>
										</label>
										<div class="col-md-6 col-sm-6">
											<%@include file="../share/upload/uploadVideo.jsp"%>
											
										</div>
										<div class="col-md-12 col-sm-12"></div>
									</fieldset>
									<fieldset title="详细介绍">
										<legend>Personal Information</legend>
										<div class="form-group">
											<%@include file="../share/ueditor.jsp"%>
										</div>
									</fieldset>

									<button type="submit" class="btn btn-info finish">保存</button>
								</form>
							</div>
						</div>
					</div>
				</div>



				<%@include file="../share/footer.jsp"%>


			</div>
			<!-- main content end-->
	</section>
	<script>
		/*=====STEPY WIZARD====*/
		$(function() {
			$('#default').stepy({
				backLabel : '上一步',
				block : true,
				nextLabel : '下一步',
				titleClick : true,
				titleTarget : '.stepy-tab'
			});
		});
	</script>



</body>
</html>
