<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

   <!-- header section start-->
        <div class="header-section">

        <!--toggle button start-->
        <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        <!--toggle button end-->
       
        
        <!--notification menu start -->
        <div class="visible-lg visible-md menu-right">
            <ul class="notification-menu">

                <li>
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <img src="${basepath}/backstage/images/photos/user-avatar.png" alt="" />
                        欢迎您，<span>${user.name}</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                        <li><i class="fa fa-user"></i> 姓名：<span>${user.name}</span></li>
                        <li><i class="fa fa-info"></i>  工号：<span>${user.userId}</span></li>
                        <li><i class="fa fa-cog"></i>  权限：<span>网站管理员</span></li>
                        <li><a href="${basepath}/out.do"><i class="fa fa-sign-out"></i> 退出系统</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!--notification menu end -->

        </div>
        <!-- header section end-->
       