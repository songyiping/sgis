 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <title>新闻类型管理${systemName}新闻类型管理</title>
   <%@include file="../share/share_css.jsp" %>
   <style type="text/css">
		 
		 .select-panel { padding: 10px }
		 .select-panel thead { background-color: #666; color: #fff }
         .select-panel table tbody { font-weight: normal; background-color: #FFF; }
         .select-panel table tbody tr td a { font-weight: bold; color: #555;}
		 .select-panel table tbody tr td a:hover,
		 .select-panel table tbody tr td a:focus{ text-decoration: none;color: #65CEA7;}
		  table tbody tr .active  { background-color: rgba(255,255,255,0)}
         </style>
</head>
<body>
	
	<form action="newsTypeInf_edit.action" method="post" onsubmit="return checkFrm();">
     <div class="row">
        <div class="col-lg-12">   
        <section class="panel">
            <header class="panel-heading custom-tab ">
              <div class="select-panel">
                <div style="margin-bottom: 20px" >
                  <button class="btn btn-success" >新增</button>
                  <button class="btn btn-warning" >修改</button>
                  <button class="btn btn-danger" >删除</button>
                </div>
                <table class="table">
                  <thead>
                    <tr>
                      <td algin="center">新闻类型</td>
                   
                    </tr>
                  </thead>
                  <tbody style=" font-weight: normal;">
                     <c:forEach items="${newsTypeList}" var="son">   
                       <c:if test="${son.parentId eq newsTypeId}">
         	                <tr>   
         	                <td>${son.name}</td>
         	                </tr>
                       </c:if>
                     </c:forEach>
                  </tbody>
                </table>
              </div>
            </header>
            </section>
        </div>
      </div>
     
    </form>
</body>
</html>
    </form>      
</body>
</html>