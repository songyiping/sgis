<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp"%>
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
<title>宝武集团韶关钢铁有限公司</title>

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
		<div class="col-md-10" style="margin-top: 40px; background-color: #FFF">
			<!--  CONTENT CONTAINER -->
			<div class="content-container">


				<!--页面名称-->
				<div class="pageName">
					<h2>${secondBar.newsTypeName}</h2>
				</div>

				<hr>

				<!--内容主体-->
				<div class="content-body">

					<!----- 3_COLUMS-1  ----->

					<div class="row">

						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>优碳钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/1T.png" alt="优碳钢">
									<p>20系列钢，塑性、韧性高，具有优良的冷成形性能和焊接性能，用于制作仪表外壳、汽车和拖拉机上的冷冲压件； 45～50系列钢经热处理后具有较高的强度和较高的塑性、韧性，用于制作轴类零件，目前宝钢韶钢产品已大量出口日本、韩国、东南亚等地区。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>合金结构钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/2T.png" alt="合金结构钢">
									<p>20系列钢，塑性、韧性高，具有优良的冷成形性能和焊接性能，用于制作仪表外壳、汽车和拖拉机上的冷冲压件； 45～50系列钢经热处理后具有较高的强度和较高的塑性、韧性，用于制作轴类零件，目前宝钢韶钢产品已大量出口日本、韩国、东南亚等地区。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>碳素及低合金钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/3T.png" alt="碳素及低合金钢">
									<p>宝钢韶钢生产的碳素、低合金钢，具有较好的机械性能和加工性能。用于各种机械结构件、金属制品及各类工具，建造厂房、桥梁、锅炉、船舶、车辆等。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>

					</div>
					<!-- 3_COLUMS END -->


					<!----- 3_COLUMS-2 ----->

					<div class="row">



						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>磨球钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/4T.png" alt="磨球钢">
									<p>磨球钢主要应用于矿山选矿、水泥、火力发电、钢铁等行业，宝钢韶钢产品成分均匀，耐磨性好，可根据客户成分、性能要求定制生产，目前已大量出口南美洲地区。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>齿轮钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/5T.png" alt="齿轮钢">
									<p>齿轮钢主要用于汽车、铁路、船舶、工程机械的变速、传动系统零部件，要求圆钢有良好的淬透性、热处理后具备高的强度、硬度、和韧性，表面耐磨而心部有良好的韧性耐冲击。目前宝钢韶钢齿轮钢产品淬透性带宽可稳定控制在6HRC以内，满足中高端齿轮用钢要求。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>轴承钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/6T.png" alt="轴承钢">
									<p>轴承钢用于制作滚动轴承的滚动体和套圈，下游行业包括汽车、发电设备、轨道交通、精密数控机床、冶金、航空航天等。宝钢韶钢生产过程控制稳定，产品纯净度高、组织均匀、具高接触疲劳强度，得到NSK、SKF、天津日进等国际知名轴承企业的认可。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>

					</div>
					<!-- 3_COLUMS END -->

					<!----- 3_COLUMS-3 ----->

					<div class="row">



						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>管坯钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/7T.png" alt="管坯钢">
									<p>管坯钢主要用于结构与输送管、高压锅炉管等，宝钢韶钢可将砷、锡、铅、铋、锑等有害元素总量控制在0.035%以内，组织均匀，满足高等级合金管坯钢的要求。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>非调质钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/8T.png" alt="非调质钢">
									<p>非调质钢主要用于汽车或柴油机发动机用曲轴、连杆，要求材料高抗拉强度和疲劳强度，表面硬度较高、耐磨，心部韧性好。宝钢韶钢可根据德标或美标、日标进行相关产品生产，并可根据客户技术要求专项定制。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>模具钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/9T.png" alt="模具钢">
									<p>目前宝钢韶钢以热作模具钢H13系列为主，材料成分均匀，具有高的硬度、强度、耐磨性，可制作热挤压、热压铸、热锻模具，满足客户要求。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>

					</div>
					<!-- 3_COLUMS END -->

					<!----- 3_COLUMS-4 ----->

					<div class="row">



						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>易切削钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/10T.png" alt="易切削钢">
									<p>宝钢韶钢生产的易切削钢以高含硫为主，产品夹杂物可控，切削性能良好，得到客户的普遍认可。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type">

									<h3>弹簧钢</h3>
									<img class="img-circle" src="${basepath}/common/images/businessScope/specialSteel/11T.png" alt="弹簧钢">
									<p>宝钢韶钢生产的生产的弹簧钢组织均匀，脱碳较轻，具有较高的屈服强度、弹性极限、抗疲劳性能。可用于铁路、车辆、工程机械等方面制作弹簧使用。</p>

								</div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>


						<div class="col-md-4">

							<!--  PROFILE PANEL -->
							<div class="profile-panel">

								<!-- 特钢产品类型 -->
								<div class="specialSteel-type"></div>
								<!-- 特钢产品类型 结束 -->

							</div>
							<!--  PROFILE PANEL  END -->

						</div>

					</div>
					<!-- 3_COLUMS END -->

					<hr>
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
	<script src="${basepath}/common/assets/js/vendor/jquery.min.js"></script>
	<script src="${basepath}/common/dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${basepath}/common/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>