<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<img class="baowu-logo" src="${basepath}/common/images/baowu.png" > 
		<div class="navbar-right"> 
		  <img class="baowu-title" src="${basepath}/common/images/title.png">  
		  <div class="btn-group" style="display: block; margin-left: 300px">
			<button onclick="javascript:s22t()" type="button" class="btn btn-default navbar-btn ">繁</button>
			<button onclick="javascript:t22s()" type="button" class="btn btn-default navbar-btn ">简</button>
		  </div> 	  
		</div>
		
	</div>

	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>

	</div>

	<div class="gradient-color-nav">
		<div class="container">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

				<!--  NEST DROW-->
				<ul class="nav navbar-nav">

					<li class="active"><a href="${basepath}/index">首页</a></li>
					<c:forEach items="${fatherList}" var="fatherList">
						<c:if test="${ fatherList.isVisible eq 1}">
						<c:choose>
							<c:when test="${firstBar.newsTypeId eq fatherList.newsTypeId}">
								<li class="active">
							</c:when>
							<c:otherwise>
								<li>
							</c:otherwise>
						</c:choose>
						<a href="${basepath}/list/${fatherList.newsTypeId }.do">${fatherList.newsTypeName}</a>
						</li>
						</c:if>
					</c:forEach>
				</ul>
				<!--嵌套表单-->
				
			</div>
		</div>
	</div>



</nav>
<!-- NAVBAR END-->



