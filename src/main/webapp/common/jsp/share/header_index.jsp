<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<img class="baowu-logo" src="${basepath}/common/images/baowu.png" > 
		<div class="navbar-right"> 
		  <img class="baowu-title" src="${basepath}/common/images/title.png">  
		</div>
	</div>

	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> 
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span>
		</button>

	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		<!--  NEST DROW-->
		<ul class="nav navbar-nav">
			<li><a href="${basepath}/index">首页</a></li>
			<c:forEach items="${fatherList}" var="fatherList">
				<c:if test="${ fatherList.isVisible eq 1}">
				<li><a href="${basepath}/list/${fatherList.newsTypeId }.do">${fatherList.newsTypeName}</a></li>
				</c:if>
			</c:forEach>
		</ul>

		<!--嵌套表单-->
		<!--  <form class="navbar-form navbar-right">
      <div class="input-group"> <span class="input-group-btn">
        <button class="btn btn-default" type="button">Go!</button>
        </span>
        <input type="text" class="form-control" placeholder="站内搜索">
      </div>
    </form>
    -->
		<div class="btn-group navbar-right" style="mrgin-right: 40px">
			<button onclick="javascript:s22t()" type="button" class="btn btn-default navbar-btn ">繁</button>
			<button onclick="javascript:t22s()" type="button" class="btn btn-default navbar-btn ">简</button>
		</div>
	</div>
</nav>
<!-- NAVBAR END-->



