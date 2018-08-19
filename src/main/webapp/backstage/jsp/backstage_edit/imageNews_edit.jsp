 <%@ page language="java" import="java.util.UUID" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="../share/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>${newsType.name}-编辑</title>

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
               ${newsType.name} <small>编辑列表</small>
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
<!--表格开始标志  -->   <form action="${basepath}/news/edit.do" method="post" onsubmit="return checkFrm();">
                            <h5>文章基本信息</h5>
                            <div class="form-group">
                                 <input type="hidden"  name="id" value="${news.id}"/> 
        <!--  newstypeId  -->    <input type="hidden"  name="newsType.id" value="${news.newsType.id}"/> 
        <!--  userId -->         <input type="hidden"   name="user.id" value="${news.user.id}"/>
        <!--  picId -->          <input type="hidden" name="pic.id" id="test"  value="${news.pic.id}"  />
        <!--  mainTitle   -->    <input type="text"  name="mainTitle" value="${news.mainTitle}"  class="form-control"  placeholder="文章主标题" maxlength = "50">
        <!--  secondTitle -->    <input type="text" name="secondTitle" value="${news.secondTitle}" class="form-control"  placeholder="文章副标题" maxlength = "50">
        <!--  author  -->        <input type="text" name="author"  value="${news.author}" class="form-control"  placeholder="文章作者" maxlength = "20">
                                
                            </div>
                              
                            <hr>
                            <!--上传图片 start-->
                            <h5>上传首页最新资讯板块-轮播图片</h5>
                              
                                 <div class="fileupload fileupload-new" data-provides="fileupload" style="margin-bottom: 40px" id="upload">
                                 <div class="fileupload-new" > 
                                 <c:choose>
                                    	<c:when test="${news.pic.url eq null || news.pic.url eq ''}">
                                    	 <img src="${basepath}/backstage/images/no+ZXZX-bannerCarousel-img.png" id="images" style="width: 350px; height: 200px">
                                    	</c:when>
                                        <c:otherwise>
                                         <img src="${basepath}/${news.pic.url}" id="images" style="width: 350px; height: 200px">
                                        </c:otherwise>
                                 </c:choose>
                                  </div>
                                  
                                 <div class="fileupload-preview fileupload-exists thumbnail"></div>
                                <div style=" margin-top: 10px; margin-bottom: 20px"> <span class="label label-warning">建议</span> <span>上传图片尺寸：750 × 500 px</span> </div>
                                 <div> 
                                 <span class="btn btn-default btn-file"> 
                                 <span class="fileupload-new"><i class="fa fa-paper-clip"></i>选择图片</span> 
                                 <span class="fileupload-exists"><i class="fa fa-undo"></i> 重选</span>
                                
                                  <input type="file" name="file" id="file" class="default" >
                                  </span> <a class="btn btn-danger fileupload-exists" data-dismiss="fileupload" onclick="return ajaxFileUpload()">
                                  <i class="fa fa-trash"></i> 上传</a> </div>
                          
                     
                                   </div>
           
                             <!--上传图片 end-->
                        
                            
                           
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
<script type="text/javascript" >
function ajaxFileUpload()
{
	if(fileJudge()){
    $("#loading")
    .ajaxStart(function(){
        $(this).show();
    })//开始上传文件时显示一个图片
    .ajaxComplete(function(){
        $(this).hide();
    });//文件上传完成将图片隐藏起来
    
    $.ajaxFileUpload
    (
        {
            url:'${basepath}/file_upload.do?id=${user.id}',//用于文件上传的服务器端请求地址
            secureuri:false,//一般设置为false
            fileElementId:'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
            dataType: 'String',//返回值类型 一般设置为json
            success: function (data, status)  //服务器成功响应处理函数
            {       
            	var reg = /<pre.+?>(.+)<\/pre>/g;  
            	var result = data.match(reg);  
            	data = RegExp.$1;
            	var obj = JSON.parse(data);
            	
            	document.getElementById("test").value=obj.id;
            	document.getElementById("images").src='${basepath}/'+obj.url;
            	alert("文件上传成功:\n文件上类型:"+obj.type+"\n文件大小:"+obj.size/1048576+"M");
 
            },
            error: function (data, status, e)//服务器响应失败处理函数
            {
                alert("错误");
            }
        }
    )
    
 }
  
}
function fileJudge()
{
  var filePath = document.getElementById("file").value;
  if(filePath.length < 1)
  {
   alert("请选择要上传的文件");
   return false ;
  }
  var fileLx = filePath.toString().substring(filePath.toString().lastIndexOf(".")+1) ;

 
  if(fileLx == "gif" || fileLx == "jpg" || fileLx == "jpeg" || fileLx == "bmp" || fileLx == "png")
  {
	  if(filePath.length >52420000)
	  {
		  alert("超过限定大小");
		  return false;
	  }
	  return true;
  }
  alert("文件类型错误");
 return false;
}


</script>
</body>
</html>