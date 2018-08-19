
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--  MENU LIST CONTAINER -->
<div class="list-group subpage-menu-list">

	<c:forEach items="${secondList}" var="secondList">
		<c:choose>
			<c:when test="${thirdBar ne null}">
				<a href="${basepath}/list/${secondList.newsTypeId}.do" class="list-group-item 
				<c:if test="${secondBar.newsTypeId  eq secondList.newsTypeId}">active</c:if>"> ${secondList.newsTypeName} </a>
				<c:if test="${secondBar.newsTypeId  eq secondList.newsTypeId}">
					<c:forEach items="${thirdList}" var="thirdList">

						<a href="${basepath}/list/${thirdList.newsTypeId}.do" class="list-group-item 
				               <c:if test="${thirdBar.newsTypeId  eq thirdList.newsTypeId}">active</c:if>">&nbsp;&nbsp; ${thirdList.newsTypeName} </a>

					</c:forEach>
				</c:if>
			</c:when>
			<c:otherwise>
				<a href="${basepath}/list/${secondList.newsTypeId}.do" class="list-group-item 
				<c:if test="${secondBar.newsTypeId  eq secondList.newsTypeId}">active</c:if>"> ${secondList.newsTypeName} </a>
			</c:otherwise>
		</c:choose>

	</c:forEach>
</div>
<!--  MENU LIST CONTAINER END -->

