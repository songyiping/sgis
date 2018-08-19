<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../share/taglib.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>${newsType.newsTypeName}-管理-${systemName}</title>

  <%@include file="../share/share_css.jsp" %>

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
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
               ${newsType.newsTypeName}  <small>管理列表</small>
            </h3>
             
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <section class="wrapper">
        <!-- page start-->

         <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">文章列表  <a href="${basepath}/news/toadd/${newsTypeId}.do" class="btn btn-default pull-right" target="_black">新增</a>         
        </header>
                        <div class="panel-body">
                                  
                            <table class="table  table-hover general-table">
                                <thead>
                                <tr> 
                                    <th  width="5%">编号</th>
                                    <c:if test="${newsType.newsTypeName eq '韶钢新闻'}">  <th>缩略图</th></c:if>                                 
                                    <th  width="31%">标题</th>
                                    <th  width="15%">作者</th>
                                    <th width="10%">提交时间</th>
                                    <th width="12%">状态</th>
                                    <th width="12%">操作</th>
                                    <th width="13%">编辑</th>
                                </tr>
                                </thead>
                                
                                <tbody>
                                
                                 <c:forEach varStatus="varStatus" items="${pageNews.datas}" var="news">
                                 <tr bgcolor="${varStatus.index % 2 == 1 ? '#EFEFEF' : 'FFFFFF' }"> <!-- 间隔行背景色--> 
                                
                                 <!-- 编号 -->
                                 <td><a href="${basepath}/news/check.do?news=${news}" target="_blank">${varStatus.count}</a></td> 
                                 <c:if test="${newsType.newsTypeName eq '韶钢新闻'}"> 	
                                 
                                 <!-- 照片 -->
                                 <td><a href="${basepath}/${news.picList[0].url}" target="_blank" title="打开浏览照片"><img src="${basepath}/${news.picList[0].url}" style="width: 60px; height: 20px"></a></td>
                                 </c:if>    
                                 
                                 <!-- 标题 -->
                                 <td>
                                 	 <c:choose>
 						                  <c:when test="${fn:length(news.mainTitle) >= 20}">
 						 				   <a href="" target="_blank" title="${news.mainTitle}">
 						 				   ${fn:substring(news.mainTitle,0,19)}...</a>
                        				 </c:when>
                       					<c:otherwise>
                          					  <a href="" target="_blank" title="${news.mainTitle}">
                          					  ${news.mainTitle}</a>
                       					</c:otherwise>
                     				 </c:choose>
                                 </td>
                                 
                                 <!-- 作者 -->	
                         	     <td>
                         	       <c:choose>
 						                  <c:when test="${fn:length(news.author) >= 7}">
 						 				   <a href="" target="_blank" title="${news.author}">
 						 				   ${fn:substring(news.author,0,7)}...</a>
                        				 </c:when>
                       					<c:otherwise>
                          					<a href="" target="_blank" title="${news.author}">
                          					  ${news.author}</a>
                       					</c:otherwise>
                     				 </c:choose>
                     			 </td>
                     			 
                     			 <!-- 修改日期 -->	
                     			 <td>
                     				 <a id="btn" data-toggle="modal" href="#${news.newsId}" title="修改日期">
                     				 <fmt:formatDate value="${news.createTime}" pattern="yyyy/MM/dd"/>
                     				  </a>
                     			</td>
                                
                                    
     <!-- 修改日期弹出框 -->
        <div aria-hidden="true" aria-labelledby="myModalLabel${news.newsId}" role="dialog" tabindex="-1" id="${news.newsId}" class="modal fade"> 
            <div class="modal-dialog">
                <div class="modal-content" style="width:400px; height:250px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改发布日期</h4>
                    </div>
                 
                    <div class="modal-body">
                       <form  id="form_data">
                        <p>请选择适当的发布日期：</p>
                               <input data-format="yyyy-MM-dd hh:mm:ss"  id="createTime${news.newsId}" size="10" type="text"   class="form_datetime form-control">
                              
                       </form>
                    </div>
                   
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="button" onclick="return get_edit_info(${news.newsId})">确认</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 修改日期弹出框 -->
                                <!-- 功能区  -->	
                                <td>
                                 <c:choose>
                                 	<c:when test="${news.isVisible == 1}">
                                 		 <span class="label label-success label-mini">已发布</span>
                                 		  <button class="btn btn-info btn-xs" type="button" onclick="window.location.href='${basepath}/news/isvisible.do?id=${news.newsId}'" value="提交">撤回</button>
                                 	</c:when>
                                 	<c:otherwise>
                                 	      <span class="label label-warning label-mini">未发布</span>
                                 	       <button class="btn btn-info btn-xs" type="button" onclick="window.location.href='${basepath}/news/isvisible.do?id=${news.newsId}'" value="提交">发布</button>
                                 	</c:otherwise>
                                 </c:choose> 
                                </td>
                                
                                <td>
                                     <c:choose>
                                         	<c:when test="${news.isTop == 0}">
                                         	<button class="btn btn-info btn-xs" type="button" onclick="window.location.href='${basepath}/news/istop.do?id=${news.newsId}'" value="提交">置顶</button>
                                    		</c:when>
                                    		<c:otherwise>
                                    		 <button class="btn btn-info btn-xs" type="button" onclick="window.location.href='${basepath}/news/istop.do?id=${news.newsId}'" value="提交">上移</button>
                                    		  <button class="btn btn-info btn-xs" type="button" onclick="window.location.href='${basepath}/news/isnottop.do?id=${news.newsId}'" value="提交">撤销置顶</button>
                                    		</c:otherwise>
                                    	</c:choose>
                                 </td>
                                 <td>
                                    <c:if test="${news.isVisible == -1}">
                                        
                                      	<a class="btn btn-default btn-xs"  href="${basepath}/news/toedit.do?id=${news.newsId}">编辑</a>
                                     
                                      	 <a class="btn btn-default btn-xs"  href="${basepath}/news/del.do?id=${news.newsId}" onclick="return confirm('确定要删除吗？');">删除</a>
                                    </c:if>
                                  </td>
                                  
                                  </tr>
                                 </c:forEach> 
                               </tbody>
                            </table>
                            
                             <!--  分页  -->
           						 <div class="bs-example" data-example-id="disabled-active-pagination">
            							<nav aria-label="...">
             							 <ul class="pagination">
                   							 <c:if test="${chooseNum>1}">
                          				 		<li><a href="${basepath}/backstage/${secondBar.newsTypeId}.do?chooseNum=1">«</a></li>
                      						 </c:if>
	                        	 <c:forEach begin="1" end="${pageNews.pageNum}" var="each"> 
                           			 <c:choose>
                              			  <c:when test="${chooseNum == each}">
                              	 		  <li class="active"><a href="${basepath}/backstage/${secondBar.newsTypeId}.do?chooseNum=${each}">${each}</a></li>
                              			  </c:when>
                              			  <c:when test="${each>=(chooseNum-2) && each<=(chooseNum+2)}">
                              	  		 <li><a href="${basepath}/backstage/${secondBar.newsTypeId}.do?chooseNum=${each}">${each}</a></li>
                              			</c:when>
                            		</c:choose>
                      			 </c:forEach>
                                <c:if test="${chooseNum < pageNews.pageNum}">   
                                  <li><a href="${basepath}/backstage/${secondBar.newsTypeId}.do?chooseNum=${pageNews.pageNum}">»</a></li>
                                 </c:if>
               
                                        </ul><!-- end pagination -->
                                      </nav>
                               </div><!--  分页 结束  -->
                        </div>
                    </section>
                </div>
            </div>

        
        
        <!-- page end-->
        </section>
        <!--body wrapper end-->

<%@include file="../share/footer.jsp" %>

    </div>
    <!-- main content end-->
</section>
<link rel="stylesheet" type="text/css" href="${basepath}/backstage/js/datetimepicker/datetimepicker-custom.css" />
<%@include file="../share/share_js.jsp" %>
<script type="text/javascript" src="${basepath}/backstage/js/datetimepicker/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${basepath}/backstage/js/datetimepicker/pickers-init.js"></script>
<script type="text/javascript">
$('#editVoince').on('show.bs.modal', function (event) {  
    var btn = $(event.relatedTarget); //触发事件的按钮  
    var modal = $(this);  //当前模态框  
    var modalId = btn.data('btn');   //解析出data-id的内容  
    var content = btnThis.closest('tr').find('td').eq(2).text();  
    modal.find('.btn').val(btn);           
});  
</script>

<script type="text/javascript">
    function get_edit_info(id)
    {
    	var tid = id;
    	var createTime = $("#createTime"+tid).data("datetimepicker").getDate();
      //  var formatted = createTime.getFullYear() + "-" + (createTime.getMonth() + 1) + "-" + createTime.getDate() + " " + createTime.getHours() + ":" + createTime.getMinutes() + ":" + createTime.getSeconds();  


        $.ajax(
                {
                    url: "${basepath}/news/edit_createTime.do",
                    data:{"id":tid, "createTime":createTime},
                    type: "post",
                    success:function(data)
                    {
                    	 alert("更新成功");
                    	 $('#'+tid).modal('hide');
                    	 window.location.href= "${basepath}/backstage/${newsType.getNewsTypeId()}.do";
                    },
                    error:function()
                    {
                        alert('请求出错');
                    }
                });
        return true; 

    }
 </script>  


</body>
</html>
