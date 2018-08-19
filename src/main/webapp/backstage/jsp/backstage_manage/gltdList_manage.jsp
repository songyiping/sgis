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
               ${newsType.newsTypeName}   <small>管理列表</small>
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
                                    <th  width="15%">姓名</th>
                                    <th  width="20%">主要职位</th>             
                                    <th  width="20%">其他职位</th>                                  
                                    <th width="12%">状态</th>
                                    <th width="12%">操作</th>
                                    <th width="13%">编辑</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                              <c:forEach varStatus="varStatus" items="${pageNews.datas}" var="news">
                                 <tr bgcolor="${varStatus.index % 2 == 1 ? '#EFEFEF' : 'FFFFFF' }">  
                                 	<td><a href="${basepath}/news/check.do?news=${news}" target="_blank">${varStatus.count}</a></td> 
                            
                                      <td>
                         	       <c:choose>
 						                  <c:when test="${fn:length(news.author) >= 7}">
 						 				   <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.author}">
 						 				   ${fn:substring(news.author,0,7)}...</a>
                        				 </c:when>
                       					<c:otherwise>
                          					  <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.author}">
                          					  ${news.author}</a>
                       					</c:otherwise>
                     				 </c:choose>
                     				 </td>
                                 
                                 	<td>
                                 	 <c:choose>
 						                  <c:when test="${fn:length(news.mainTitle) >= 13}">
 						 				   <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.mainTitle}">
 						 				   ${fn:substring(news.mainTitle,0,13)}...</a>
                        				 </c:when>
                       					<c:otherwise>
                          					  <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.mainTitle}">
                          					  ${news.mainTitle}</a>
                       					</c:otherwise>
                     				 </c:choose>
                                 	</td>
                                 	
                         	        <td>
                                 	 <c:choose>
 						                  <c:when test="${fn:length(news.secondTitle) >= 13}">
 						 				   <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.secondTitle}">
 						 				   ${fn:substring(news.secondTitle,0,13)}...</a>
                        				 </c:when>
                       					<c:otherwise>
                          					  <a href="${basepath}/news/check.do?id=${news.newsId}" target="_blank" title="${news.secondTitle}">
                          					  ${news.secondTitle}</a>
                       					</c:otherwise>
                     				 </c:choose>
                                 	</td> 
                                 	
                     				     
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
                            <!--分页-->
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
               
             </ul>
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

<%@include file="../share/share_js.jsp" %>

</body>
</html>
