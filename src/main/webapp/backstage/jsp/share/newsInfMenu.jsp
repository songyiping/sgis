 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
 <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="${basepath}/home.do"><img src="${basepath}/backstage/images/invoice-logo.png" alt=""></a>
        </div>
        <div class="logo-icon text-center">
            <a href="${basepath}/home.do"><img src="${basepath}/backstage/images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="${basepath}/backstage/images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="">${user.name}</a></h4>
                        <p>"我是网站管理员"</p>
                    </div>
                </div>

                <h5 class="left-nav-title">用户信息</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>${user.name}</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>${user.userId }</span></a></li>
                    <li><a href="${basepath}/out.do"><i class="fa fa-sign-out"></i> <span>退出系统</span></a></li>
                </ul>
            </div>
           
            <!--sidebar nav end-->
            
            <ul class="nav nav-pills nav-stacked custom-nav">
            <li><a href="${basepath}/home.do"><i class="fa fa-home"></i> <span>欢迎页</span></a></li>
              <c:forEach items="${allList}" var="list">
          		<c:if test="${list.fatherId == 'FATHER'}">
          		  	
          		  	<c:choose>
          		  		<c:when test="${newsType.fatherId == list.newsTypeId}">
          		  		   <li class="menu-list nav-active">
          		  		</c:when>
          		  		<c:otherwise>
          		  			 <li class="menu-list">
          		  		</c:otherwise>
          		  	</c:choose>
          		  	
          		    <a href=""><i class="fa fa-laptop"></i> <span>${list.newsTypeName}</span></a>
          		    
          		    <ul class="sub-menu-list">
          		    <c:forEach items="${allList}" var="list2">
                           <c:if test="${list2.fatherId == list.newsTypeId}">
   
                                 <c:choose>
          		  					<c:when test="${newsType.newsTypeId == list2.newsTypeId}">
          		  		  				 <li class="active">
          		  					</c:when>
          		  					<c:otherwise>
          		  						  <li>
          		  					</c:otherwise>
          		  				</c:choose>
                                 
                                     <a href="${basepath}/backstage/${list2.newsTypeId}.do">${list2.newsTypeName}</a>
                                     
                                     <ul>
          		   					 <c:forEach items="${allList}" var="list3">
          		   					 <c:if test="${list3.fatherId == list2.newsTypeId}">
          		   					 
                                        <li>  <a href="${basepath}/backstage/${list3.newsTypeId}.do">${list3.newsTypeName}</a> </li>
                                    </c:if>
                                     </c:forEach>
                                 	</ul>
                                 
                                 
                                 </li>
                          </c:if>
                    </c:forEach>
                   
                 </ul> 
                 </li>
          		</c:if>
          	</c:forEach>
             <li><a href="${basepath}/" target="_blank"><i class="fa fa-eye"></i> <span>预览网站</span></a> </li>   
          </ul>
        </div>
    </div>
    <!-- left side end-->