<%@ page language="java" pageEncoding="UTF-8"%>

<!-- FOOTER_INFO -->
<div class="container-fluid footer-info">
	<div class="row">
		<!--  MENU_LIST  -->


		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/a.do"> 关于我们</a></li>
					<li><a href="${basepath}/list/a1.do">公司简介</a></li>
					<li><a href="${basepath}/list/a2.do">治理结构</a></li>
					<li><a href="${basepath}/list/a3.do">公司愿景</a></li>
					<li><a href="${basepath}/list/a4.do">董事长致辞</a></li>
					<li><a href="${basepath}/list/a5.do">董事会</a></li>
					<li><a href="${basepath}/list/a6.do">管理团队</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/b.do"> 业务规划</a></li>
					<li><a href="${basepath}/list/b1.do">普材板块</a></li>
					<li><a href="${basepath}/list/b2.do">特钢板块</a></li>
					<li><a href="${basepath}/list/b3.do">多元板块</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/c.do"> 媒体中心</a></li>
					<li><a href="${basepath}/list/c1.do">韶钢新闻</a></li>
					<li><a href="${basepath}/list/c2.do">信息公告</a></li>
					<li><a href="${basepath}/list/c3.do">传媒摘要</a></li>
					<li><a href="${basepath}/list/c4.do">品牌故事</a></li>
					<li><a href="${basepath}/list/c5.do">微信公众号</a></li>
					<li><a href="${basepath}/list/c6.do">视频矩阵</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="footer-menu-list">
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/d.do"> 党的建设</a></li>
					<li><a href="${basepath}/list/d1.do">基本概况</a></li>
					<li><a href="${basepath}/list/d2.do">党建动态</a></li>
				</ul>
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/e.do"> 社会责任</a></li>
				</ul>
				<ul class="list-unstyled">
					<li class="menu-list-title"><a href="${basepath}/list/f.do"> 员工发展</a></li>
					<li><a href="${basepath}/list/f1.do">概述</a></li>
					<li><a href="${basepath}/list/f2.do">职业发展</a></li>
					<li><a href="${basepath}/list/f3.do">薪酬福利</a></li>
				</ul>
			</div>
		</div>
		<!-- MENU_LIST END  -->


	</div>


	<div class="row website-info">
		<div class="col-md-7">
			<ul class="link-list">
				<li><a href="#">韶钢网站群</a></li>
				<li><a href="#">友情链接</a></li>
				<li><a href="#">法律声明</a></li>
				<li><a href="#">帮助信息</a></li>
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
		obj.innerHTML = s2s(obj.innerHTML);
	}
</script>
