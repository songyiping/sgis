<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 列表中 的 分页标签  -->
<div class="bs-example" data-example-id="disabled-active-pagination">
	<nav aria-label="...">
		<ul class="pagination">
			<c:if test="${chooseNum>1}">
				<li><a href="${basepath}/list/${secondBar.newsTypeId}.do?chooseNum=1">«</a></li>
			</c:if>

			<c:forEach begin="1" end="${pageNews.pageNum}" var="each">
				<c:choose>
					<c:when test="${chooseNum == each}">
						<li class="active"><a href="${basepath}/list/${secondBar.newsTypeId}.do?chooseNum=${each}">${each}</a></li>
					</c:when>
					<c:when test="${each>=(chooseNum-2) && each<=(chooseNum+2)}">
						<li><a href="${basepath}/list/${secondBar.newsTypeId}.do?chooseNum=${each}">${each}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${chooseNum < pageNews.pageNum}">
				<li><a href="${basepath}/list/${secondBar.newsTypeId}.do?chooseNum=${pageNews.pageNum}">»</a></li>
			</c:if>

		</ul>
	</nav>
</div>
<!--  分页 结束  -->