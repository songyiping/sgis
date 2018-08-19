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
                        <h4><a href="#">${user.name}</a></h4>
                        <p>"我是网站管理员"</p>
                    </div>
                </div>

                <h5 class="left-nav-title">用户信息</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>${user.name}</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>工号</span></a></li>
                    <li><a href="${basepaht}/out.do"><i class="fa fa-sign-out"></i> <span>退出系统</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
            
                                   
                <li><a href="${basepaht}/home.do"><i class="fa fa-home"></i> <span>欢迎页</span></a></li>
                <li><a href="SGIS_CarouselBanner.html"><i class="fa fa-picture-o"></i> <span>首页轮播海报</span></a></li>
                <c:forEach items="${parentList}" var="list">
                    <c:if test="${list.parentId == '0'}">
                         <li class="menu-list"><a href=""><i class="fa fa-tasks"></i> <span>${list.name}</span></a>
                            <ul class="sub-menu-list">
                            <c:forEach items="${parentList}" var="list2">
                                 <c:if test="${list2.parentId == list.id}">
                                     <li><a href="backstage_newsListForType.action?newsTypeId=${list2.id}">${list2.name}</a></li>
                                 </c:if>
                             </c:forEach>
                              </ul>
                   </c:if>
               </c:forEach>
 
               
                <li><a href="${basepaht}/index.do" target="_blank"><i class="fa fa-eye"></i> <span>预览网站</span></a></li>

          </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->