<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">
   <%@include file="../share/share_css.jsp" %> 
    
  <title>欢迎页</title>

</head>

<body class="sticky-header">

<section>
     
   
    <!-- main content start-->
    <div class="main-content" >

     <%@include file="../share/header.jsp" %>    

        <!-- page heading start-->
        <div class="page-heading">
            <h5>
                欢迎使用网站综合管理平台
            </h5>
            <ul class="breadcrumb">
                
                <li class="active">网站综合管理平台将帮助您进行全方位的网站建设和管理。请您参考以下三个步骤开展工作。</li>
            </ul>
        </div>
        <!-- page heading end-->
        <hr/>
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="square-widget">
                        <div class="widget-container">
                           
                           <ul id="myTab" class="nav nav-tabs stepy-tab">
                              <li class="active">
                                  <a href="#AAA" data-toggle="tab">管理内容</a>
                                   
                              </li>
                              <li><a href="#BBB" data-toggle="tab">信息维护</a></li>
                              		
                              <li><a href="#CCC" data-toggle="tab">状态监控</a></li>
                                
                          </ul>
                          <div id="myTabContent" class="tab-content">
                              <div class="tab-pane fade in active" id="AAA">
                                  <p>想脱离开网站纷杂的网页，直观便捷的更新网站中的内容信息吗？请点击内容管理，体验维护网站资料的轻松过程。</p>
                                  
                                   <%@include file="../share/newsInfMenu.jsp" %>
                                   
                              </div>
                              <div class="tab-pane fade" id="BBB">
                                  <p>网站的最新内容需要发布后才能让别人看到。进入网站发布，完善的发布机制将帮助您把网站的最新信息展现出来。</p>
                                 <%@include file="../share/newsInfMenu2.jsp" %>
                                   
                                  
                              </div>
                              <div class="tab-pane fade" id="CCC">
                                  <p>网站管理帮助您全面掌控网站的各大系统功能：网站备份、管理员权限、访问量统计…由此展开。</p>
                                  <%@include file="../share/newsInfMenu3.jsp" %>
                              </div>
                              
                          </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <!--body wrapper end-->

   <%@include file="../share/footer.jsp" %> 

    </div>
    <!-- main content end-->
</section>

<%@include file="../share/share_js.jsp" %>  

</body>
</html>
