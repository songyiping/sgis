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

  <title>${newsType.newsTypeName}-新增</title>

   <%@include file="../share/share_css.jsp" %>
   <link rel="stylesheet" type="text/css" href="${basepath}/backstage/css/bootstrap-fileupload.min.css" />

</head>

<body class="sticky-header">

<section>
  
    <%@include file="../share/newsInfMenu.jsp" %>
    <!-- main content start-->
    <div class="main-content" >

       <%@include file="../share/header.jsp" %>

        <!-- page heading start-->
        <div class="page-heading" style="border-bottom: 1px solid #CCC">
            <h3>
               ${newsType.newsTypeName} <small>新增</small>
            </h3>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <section class="wrapper">
        <!-- page start-->
       
      
         <!--新闻基本信息 start-->
         <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        基本内容
                    </header>
                    <div class="panel-body">
<!--表格开始标志  -->   <form action="${basepath}/news/add.do" method="post" onsubmit="return checkFrm();">
                            <h5>文章基本信息</h5>
                            <div class="form-group">
   
        <!--  newstypeId  -->    <input type="hidden"  name="newsType.newsTypeId" value="${newsType.newsTypeId}"/>
        						 <input type="hidden"  name="newsType.newsTypeName" value="${newsType.newsTypeName}"/>  
        <!--  userId -->         <input type="hidden"   name="user.userId" value="${user.userId}"/>
       								<input type="hidden" name="newsId" value="${uuid}" />
        <!--  mainTitle   -->    <input type="text"  name="mainTitle"   class="form-control"  placeholder="文章主标题" maxlength = "50">
        <!--  secondTitle -->    <input type="text" name="secondTitle"  class="form-control"  placeholder="文章副标题" maxlength = "50">
        <!--  author  -->        <input type="text" name="author"  class="form-control"  placeholder="文章作者" maxlength = "20">
                            </div>
                        
                            <%@include file="../share/ueditor.jsp" %>
                      
                           
                     </form>

                    </div>
                </section>
            </div>
            
        </div>
        <!--新闻基本信息 end-->
        
        
      
        
        <!-- page end-->
        </section>
        <!--body wrapper end-->

       <%@include file="../share/footer.jsp" %>


    </div>
    <!-- main content end-->
</section>

<%@include file="../share/share_js.jsp" %>
<script type="text/javascript" src="${basepath}/backstage/js/bootstrap-fileupload.min.js"></script> 
<script type="text/javascript" src="${basepath}/backstage/js/ajaxfileupload.js"></script>


</body>
</html>
