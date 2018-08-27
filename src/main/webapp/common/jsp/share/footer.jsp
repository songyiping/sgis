<%@ page language="java" pageEncoding="UTF-8"%>

<!-- FOOTER_INFO -->
<div class="container-fluid footer-info">
	<div class="row">
		<!--  MENU_LIST  -->


		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/a.do"> 关于我们</a></li>
					<li><a href="${basepath}/list/aa.do">公司简介</a></li>
					<li><a href="${basepath}/list/ab.do">治理结构</a></li>
					<li><a href="${basepath}/list/ac.do">公司愿景</a></li>
					<li><a href="${basepath}/list/ad.do">董事长致辞</a></li>
					<li><a href="${basepath}/list/ae.do">董事会</a></li>
					<li><a href="${basepath}/list/af.do">管理团队</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/b.do"> 业务规划</a></li>
					<li><a href="${basepath}/list/ba.do">普材板块</a></li>
					<li><a href="${basepath}/list/bb.do">特钢板块</a></li>
					<li><a href="${basepath}/list/bc.do">多元板块</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/c.do"> 媒体中心</a></li>
					<li><a href="${basepath}/list/ca.do">韶钢新闻</a></li>
					<li><a href="${basepath}/list/cb.do">信息公告</a></li>
					<li><a href="${basepath}/list/cc.do">传媒摘要</a></li>
					<li><a href="${basepath}/list/cd.do">品牌故事</a></li>
					<li><a href="${basepath}/list/ce.do">微信公众号</a></li>
					<li><a href="${basepath}/list/cf.do">视频矩阵</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/d.do"> 党的建设</a></li>
					<li><a href="${basepath}/list/da.do">基本概况</a></li>
					<li><a href="${basepath}/list/db.do">党建动态</a></li>
				</ul>
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/e.do"> 社会责任</a></li>
				</ul>
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/f.do"> 员工发展</a></li>
					<li><a href="${basepath}/list/fa.do">概述</a></li>
					<li><a href="${basepath}/list/fb.do">职业发展</a></li>
					<li><a href="${basepath}/list/fc.do">薪酬福利</a></li>
				</ul>
			</div>
		</div>
		<!-- MENU_LIST END  -->


	</div>


	<div class="row website-info">
		<div class="col-md-7">
			<ul class="link-list">
				<li><a href="${basepath}/common/jsp/common_static/assitantInfo-sgwzq.jsp">韶钢网站群</a></li>
				<li><a href="${basepath}/common/jsp/common_static/assitantInfo-yqlj.jsp">友情链接</a></li>
				<li><a href="${basepath}/common/jsp/common_static/assitantInfo-flsm.jsp">法律声明</a></li>
				<li><a href="${basepath}/common/jsp/common_static/assitantInfo-bzxx.jsp">帮助信息</a></li>
			</ul>
		</div>
		<div class="col-md-5">
			<div class="webInfo-list">
				<ul>
					<li>Copyright © 2018 宝武集团广东韶关钢铁有限公司</li>
					<li>粤ICP备09131591号</li>
					<li>粤公网安备44020502000135号</li>
					<li>技术支持 昆仑科技</li>
				</ul>
			</div>
			<!--  .webInfo-list END  -->
		</div>
	</div>
</div>
<!-- FOOTER_INFO END -->




<!-- 繁简切换-->
<script type="text/javascript" src="${basepath}/common/assets/change/transform.js"></script>
<script type="text/JavaScript">
	var abc = sessionStorage.getItem("abc");

	var obj = document.body;
	function s22t() {
		obj.innerHTML = s2t(obj.innerHTML);
		sessionStorage.setItem("abc", "ABC");

	}
	function t22s() {
		obj.innerHTML = t2s(obj.innerHTML);
		sessionStorage.setItem("abc", "abc");
	}
	if (abc == "ABC") {
		var obj = document.body;
		obj.innerHTML = s2t(obj.innerHTML);

	}
	if (abc == "abc") {
		var obj = document.body;
		obj.innerHTML = t2s(obj.innerHTML);
	}
</script>
