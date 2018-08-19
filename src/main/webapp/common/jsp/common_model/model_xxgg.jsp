<%@ page language="java" pageEncoding="UTF-8"%>
 <div class="col-md-4 content-sectors">
      <div class="content-sectors-header">
        <h4>信息公告<span class="more"><a href="${basepath}/list/c2.do">更多</a></span></h4>
        <h5>INFORMATION BOARD</h5>
      </div>
      
       <!--  MEDIA EXCERPT -->
       <ul class="list-group">
       <c:forEach items="${c2.datas}" var="news">
       		<li class="news-list-group-item"><span class="date"><fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd"/></span>
            <a href="${basepath}/check/${news.newsId}.do">${news.mainTitle}</a></li>
       </c:forEach>      
      </ul><!--  MEDIA EXCERPT -->
          
    </div>