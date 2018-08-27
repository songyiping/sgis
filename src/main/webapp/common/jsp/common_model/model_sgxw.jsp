<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-4 content-sectors">

	<div class="content-sectors-header">
		<h4>
			韶钢新闻 <span class="more"><a href="${basepath}/list/ca.do">更多</a></span>
		</h4>
		<h5>SG NEWS</h5>
	</div>



	<!-- SG NEWS LIST -->
	<ul class="list-group">
		<c:forEach items="${c1.datas}" var="news">
			<li class="news-list-group-item"><span class="date"><fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd"></fmt:formatDate></span> <a href="${basepath}/check/${news.newsId}.do">${news.mainTitle}</a></li>

		</c:forEach>
	</ul>
	<!-- SG NEWS LIST END-->

</div>