<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../../../common/jsp/share/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="中国宝武集团韶关钢铁">
<meta name="author" content="中国宝武集团韶关钢铁">
<link rel="icon" href="${basepath}/common/images/logo_favicon.ico">
<title>宝武集团韶关钢铁有限公司</title>

<!-- Bootstrap core CSS -->
<link href="${basepath}/common/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${basepath}/common/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${basepath}/common/dist/css/sgis.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${basepath}/common/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style type="text/css"></style>
<body>

<%@include file="../../../common/jsp/share/header.jsp" %>

<div class="container"> 
  <div class="row">
  <!-------------------------------------  超小屏幕隐藏-->
    <div class="col-md-2 hidden-xs">
    
      <!--  MENU LIST CONTAINER -->
      

    </div>
    <div class="col-md-10">
    <!--  CONTENT CONTAINER -->
    <div class="content-container">
      <!--内容头部-->
      <div class="content-header">
        <!--页面名称-->
        <div class="pageName">
          <h2>待发布信息检查页面</h2>
        </div>
      </div>
      
      <hr>
      
      <!--内容主体-->
      <div class="content-body">
        <!--文章标题-->
        <h2 class="essay-headline">${news.mainTitle}</h2>
        <!--文章子标题-->
        <h3 class="essay-subheading">${news.secondTitle}</h3>
        <!--文章内容与细节-->
        <div class="essay-details">
          <!--文章内容的具体段落-->
          <p>${news.text}</p>
        
        </div>
        <!--文章作者和日期-->
        <div class="essay-author-date">
          <div>${news.author }</div>
          <div><fmt:formatDate value="${news.createTime}" pattern="yyyy/MM/dd"></fmt:formatDate></div>
        </div>  

      <hr>
      
     
        
      </div>
      
    </div>
    <!--  CONTENT CONTAINER END -->
    </div>
    
    <!-------------------------------------  超小屏幕可见-->
    <div class="col-md-2 visible-xs">
    
      <!--  MENU LIST CONTAINER -->
      
    
    </div>
    
  </div>
</div>
<%@include file="../../../common/jsp/share/footer.jsp" %>

<!-- Bootstrap core JavaScript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${basepath}/common/assets/js/vendor/jquery.min.js"></script> 
<script src="${basepath}/common/dist/js/bootstrap.min.js"></script> 

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
<script src="${basepath}/common/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
