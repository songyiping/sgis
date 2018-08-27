<%@ page language="java" pageEncoding="UTF-8"%>

<%@include file="share/taglib.jsp"%>

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

<title>宝武集团韶关钢铁有限公司</title>

<!-- Bootstrap core CSS -->
<link href="${basepath}/common/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${basepath}/common/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${basepath}/common/dist/css/sgis.css" rel="stylesheet">

<!-- CSS的悬停效果 -->
<link href="${basepath}/common/assets/hoverStyle_css3/css/normalize.css" rel="stylesheet">
<link href="${basepath}/common/assets/hoverStyle_css3/css/demo.css" rel="stylesheet">
<link href="${basepath}/common/assets/hoverStyle_css3/css/component.css" rel="stylesheet">

<!-- CSS的经营绩效轮播 -->
<link href="${basepath}/common/assets/bxslider/css/jquery.bxslider.css" rel="stylesheet">

<!-- 新闻轮播的效果 -->
<link href="${basepath}/common/assets/sliderBox/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />

<!-- 高德地图  -->
<link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css" />
<script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
<script src="https://webapi.amap.com/maps?v=1.4.8&key=7f1d312dd5dc604b791a63bc57fc18f6"></script>
<script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>


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

	<%@include file="share/header_index.jsp"%>

	<!----------------------------------- CAROUSEL -->

	<!--  针对大屏幕和中等屏幕和小屏幕的设备 -->
	<div class="carousel-style visible-lg visible-md  visible-sm " style="margin-top: 96px">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${basepath}/common/images/carousel_item_1.png" alt="...">
					<!--<div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-1</p>
        </div>-->
				</div>
				<div class="item">
					<img src="${basepath}/common/images/carousel_item_1.png" alt="...">
					<!-- <div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-2</p>
        </div>-->
				</div>
				<div class="item">
					<img src="${basepath}/common/images/carousel_item_1.png" alt="...">
					<!--<div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-3</p>
        </div>-->
				</div>
			</div>

			<!-- Controls -->
			<a class="carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon " aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon " aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!--  针对大屏幕和中等屏幕和小屏幕的设备 结束-->

	<!--  超小屏幕的设备-->
	<div class="carousel-style visible-xs" style="margin-top: 140px">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${basepath}/common/images/carousel_item_sm-1.png" alt="...">
					<!--<div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-1</p>
        </div>-->
				</div>
				<div class="item">
					<img src="${basepath}/common/images/carousel_item_sm-1.png" alt="...">
					<!-- <div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-2</p>
        </div>-->
				</div>
				<div class="item">
					<img src="${basepath}/common/images/carousel_item_sm-1.png" alt="...">
					<!--<div class="carousel-caption">
          <h1>helloworld</h1>
          <p>PAGE-3</p>
        </div>-->
				</div>
			</div>

			<!-- Controls -->
			<a class="carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon " aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon " aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!--  超小屏幕的设备 结束  -->

	<!-- CAROUSEL END-->


	<!---------------------------------- 6_CONTEN-SECTORS -->

	<div class="container-fluid">
		<div class="row">

			<!-- 韶钢新闻 轮播 -->
			<%@include file="common_model/model_zxzx.jsp"%>
			<!-- 韶钢新闻轮播-->

			<!-- 微信公众号 -->
			<%@include file="common_model/model_wxgzh.jsp"%>
			<!-- 微信公众号 -->

			<!-- 实时股价 -->
			<%@include file="common_model/model_ssgj.jsp"%>
			<!-- 实时股价 -->

			<!-- 韶钢新闻 -->
			<%@include file="common_model/model_sgxw.jsp"%>
			<!-- 韶钢新闻 -->

			<!-- 信息公告-->
			<%@include file="common_model/model_xxgg.jsp"%>
			<!-- 信息公告--->

			<!-- 视频矩阵-->
			<%@include file="common_model/model_spjz.jsp"%>
			<!-- 视频矩阵 -->
		</div>
	</div>
	<!-- 6_CONTEN-SECTORS END-->

	<!-- TRANSITIONAL_AREA-->
	<div class="transitional-area">
		<img src="${basepath}/common/images/transitionalArea-img.png" alt="">
	</div>
	<!-- TRANSITIONAL_AREA END -->


	<!--  4_MAIN_BUSSINESS_SECTORS-->
	<div class="container">
		<div class="grid">
			<figure class="effect-bubba">
				<img src="${basepath}/common/images/ordinerySteel.png" alt="img06" />
				<figcaption>
					<h2>
						<span>普钢板块</span>
					</h2>
					<p>ORDINERY STEEL</p>
					<a href="${basepath}/list/ba.do" target="_blank">View more</a>
				</figcaption>
			</figure>
			<figure class="effect-bubba">
				<img src="${basepath}/common/images/specialSteel.png" alt="img06" />
				<figcaption>
					<h2>
						<span>特钢板块</span>
					</h2>
					<p>SPECIAL STEEL</p>
					<a href="${basepath}/list/bb.do" target="_blank">View more</a>
				</figcaption>
			</figure>
			<figure class="effect-bubba">
				<img src="${basepath}/common/images/multipleDomain.png" alt="img06" />
				<figcaption>
					<h2>
						<span>多元板块</span>
					</h2>
					<p>MULTIPLE DOMIAN</p>
					<a href="${basepath}/list/bc.do" target="_blank">View more</a>
				</figcaption>
			</figure>
		</div>
	</div>
	<!--  4_MAIN_BUSSINESS_SECTORS END-->

	<!-- 经营绩效 -->
	<div style="width: 100%; height: auto; padding-top: 20px; padding-bottom: 20px; background-image: url(${basepath}/common/images/untitled.jpg);">
		<div class="slider1">
			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">6539</div>
				<div class="title">2017钢产量（万吨）</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">4005</div>
				<div class="title">2017营业收入（亿元）</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">142.7</div>
				<div class="title">2017利润总额（亿元）</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">162</div>
				<div class="title">《财富》世界500强</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">12717</div>
				<div class="title">2017社会公益捐赠数（万元）</div>
			</div>
			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">593</div>
				<div class="title">2017吨钢综合能耗（千克标准煤/吨）</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">2452</div>
				<div class="title">2017研发专利数</div>
			</div>

			<div class="slide">
				<div class="icon">
					<img src="${basepath}/common/assets/bxslider/image/1.png">
				</div>
				<div class="number">177007</div>
				<div class="title">2017员工数</div>
			</div>


		</div>
	</div>

	<!-- 经营绩效 结束  -->
	<hr>

	<!--  CONTACT INFO BOARD -->

	<div class="container contact-info-borad">

		<div class="row">

			<div class="col-md-5">
				<div class="contact-info-area">
					<h3>宝武集团广东韶关钢铁有限公司</h3>
					<ul>
						<li><span>地址：</span>广东省韶关市曲江区韶钢机关路公司办公楼</li>
						<li><span>邮编：</span>512123</li>
						<li><span>电话：</span>0751-8785363</li>
						<li><span>工作时间：</span>工作日 8:00-17:30</li>
						<li><span>网站邮箱：</span></li>
						<li><span>销售邮箱：</span></li>
						<li><span>采购邮箱：</span></li>
					</ul>

				</div>
				<!--  .contact-info-area END -->

			</div>
			<div class="col-md-7 ">
				<div class="consulting-form">
					<h3>您的咨询</h3>
					<h5 style="color: red; font-weight: bold;">
						<div id="messBox">&nbsp;</div>
					</h5>
					<form>
						<div class="col-md-6">
							<label>姓名：</label> <input type="text" id="name" maxlength="4">
						</div>
						<div class="col-md-6">
							<label>邮箱：</label> <input type="text" id="email" maxlength="100">
						</div>

						<div class="col-md-12">
							<label>资询：</label> <input type="text" id="text1" maxlength="400">
						</div>

						<div class="col-md-12" id="code">
							<label>验证码：</label> <input type="text" class="veri-code" id="check_code"> <a href="javascript:changeImage();"><img style="height: 33px; width: 80px; margin-right: 20px" id="changeImage" src="${basepath}/check_code.do" title="点击更换" />
						</div>
						</a>
						<button type="button" class="pull-right send" onclick="submitFunction();">
							<img src="${basepath}/common/images/send.png">发送
						</button>
				</div>

				</form>

			</div>
			<!--  .consulting-form END -->
		</div>

	</div>
	<!--  .row END -->

	</div>
	<!--  .container END -->

	<!--  CONTACT INFO BOARD END-->

	<!--  MAP -->
	<!--  trigger modal -->

	<div>
		<img src="${basepath}/common/images/sg_map.png" alt="map" style="width: 100%" data-toggle="modal" data-target="#myModal">
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">宝武集团韶关钢铁有限公司办公楼</h4>
				</div>
				<div class="modal-body" style="height: 400px">
					<!-- 地图的div -->
					<div id="container"></div>
					<!-- 地图的div 结束 -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!--  MAP END-->



	<%@include file="share/footer.jsp"%>

	<!-- 验证码及信息提交 -->
	<script type="text/javascript">
		function changeImage() {

			$("#changeImage").attr("src", "${basepath}/check_code.do?t=" + genTimestamp());
		}

		function genTimestamp() {
			var time = new Date();
			return time.getTime();
		}

		//页面点击发送按钮
		function submitFunction() {

			var name = $('#name').val();
			var email = $('#email').val();
			var text = $('#text1').val();
			var checkCode = $('#check_code').val().toUpperCase();
			var atpos= email.indexOf("@");
			var dotpos= email.indexOf(".");
			
			if (name == "" || email == "" || text == "" || checkCode == "") {

				if (name == "") {
					$("#name").focus();
					document.getElementById("messBox").innerHTML = "姓名不能为空！";
				}
				if (email == "") {
					$("#email").focus();
					document.getElementById("messBox").innerHTML = "邮箱不能为空！";
				}
				if (text == "") {
					$("#text1").focus();
					document.getElementById("messBox").innerHTML = "内容不能为空！";
				}
				if (checkCode == "") {
					$("#checkCode").focus();
					document.getElementById("messBox").innerHTML = "验证码不能为空！";
				}

			} else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length){
		    	$("#email").focus();
		    	document.getElementById("messBox").innerHTML = "不是一个有效的 e-mail 地址";
		    	
		    }else{
		    	
		
	
				jQuery.ajax({
					cache : false,
					type : "post",
					dataType : "json",
					url : '${basepath}/userQuestion/submitUserQuestion.do',
					data : "name=" + name + "&email=" + email + "&text=" + text + "&checkCode=" + checkCode,
					success : function(msg) {
						if (msg.result == "password_success") {
							document.getElementById("messBox").innerHTML = "提交成功，感谢您的宝贵意见和建议！";
							document.getElementById("text1").value = "";

						} else if (msg.result == "connet_error") {
							document.getElementById("messBox").innerHTML = "链接错误，请稍后再试！";
						} else if (msg.result == "times_error") {
							document.getElementById("messBox").innerHTML = "请勿重复提交";
						} else if (msg.result == "checkCode_error") {
							document.getElementById("messBox").innerHTML = "验证码错误！";

						} else {
							document.getElementById("messBox").innerHTML = "未知错误！";
						}
						changeImage();
					},
					error : function() {
						document.getElementById("messBox").innerHTML = "网络错误！请检查网络重试。";
					}

				});//jquery.ajax_end
		    }
		}
	</script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${basepath}/common/assets/js/vendor/jquery.min.js"></script>
	<script src="${basepath}/common/dist/js/bootstrap.min.js"></script>
	<script src="${basepath}/common/assets/sliderBox/js/jquery.slideBox.js"></script>
	<script>
		jQuery(function($) {

			$('#demo3').slideBox({

				duration : 0.3,//滚动持续时间，单位：秒

				easing : 'linear',//swing,linear//滚动特效

				delay : 5,//滚动延迟时间，单位：秒

				hideClickBar : false,//不自动隐藏点选按键

				clickBarRadius : 10

			});

		});
	</script>
	
	<!-- 经营绩效 -->
<script type="text/javascript" src="${basepath}/common/assets/bxslider/js/jquery.bxslider.js"></script>
<script type="text/javascript">

        $(document).ready(function(){

          $('.slider1').bxSlider({

            slideWidth: 600,

            minSlides: 3,

            maxSlides: 4,

            slideMargin: 10

          });

        });

    </script>
    
  
	
	<script type="text/javascript" src="http://hq.sinajs.cn/list=sh600019,sh600581,sh600845,sz000717,sh601968" id="jscode" charset="utf-8"></script>
	<!-- 实时股价 -->
	<script src="${basepath}/common/jsp/common_model/model_ssgj.js"></script>
	<!-- 实时股价 -->

	<!-- 高德地图 -->
	<script>
		var map = new AMap.Map('container', {
			resizeEnable : true,
			zoom : 11,
			center : [ 113.642291, 24.699514 ]
		});

		//添加点标记，并使用自己的icon
		new AMap.Marker({
			map : map,
			position : [ 113.642291, 24.699514 ],
			icon : new AMap.Icon({
				size : new AMap.Size(40, 50), //图标大小
				image : "${basepath}/common/images/way_btn2.png",
				imageOffset : new AMap.Pixel(0, -60)
			})
		});
	</script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${basepath}/common/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
