<%@ page language="java" pageEncoding="UTF-8"%>

<!--页面名称-->
<div class="pageName">
	<h2>
	    <c:choose>
	    	<c:when test="${thirdBar eq null}">
	    	${secondBar.newsTypeName}
	    	</c:when>
	    	<c:otherwise>
	    	${thirdBar.newsTypeName}
	    	</c:otherwise>  
	    </c:choose>
	    
	</h2>
	<ul class="breadcrumb">
		<li><a href="${basepath}.do">首页</a></li>
		<li><a href="${basepath}/list/${firstBar.newsTypeId}.do">${firstBar.newsTypeName}</a></li>

		<c:if test="${secondBar ne null}">
			<li><a href="${basepath}/list/${secondBar.newsTypeId}.do">${secondBar.newsTypeName}</a></li>
		</c:if>

		<c:if test="${thirdBar ne null}">
			<li><a href="${basepath}/list/${thirdBar.newsTypeId}.do">${thirdBar.newsTypeName}</a></li>
		</c:if>

	</ul>
	<div class="clear"></div>
	<!-- 清除浮动 -->
</div>
<!--   pageName End -->