<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <!-- 新媒体-->
    <div class="col-md-4 content-sectors"> 
      <!--  SOCIAL MEDIA  -->
      <div class="content-sectors-header">
        <h4>新媒体
        <span class="QR_code">
          <img class="weixin-icon" src="${basepath}/common/images/weixin_icon.png" >
          <img class="weixin-QR-code-img" src="${basepath}/common/images/QR_code.png">
        </span>
        
        <span class="QR_code">
          <img class="newsg-icon" src="${basepath}/common/images/newsg_icon.png" >
          <img class="newsg-QR-code-img" src="${basepath}/common/images/newsg_QR_code.png">
        </span>
        
        
        
        <span class="more"><a href="${basepath}/list/c5.do">更多</a></span>
        </h4>
      <h5>SOCIAL MEDIA</h5>
      </div>
      
       <!-- 针对大屏幕和中等屏幕-->
       <div class=" visible-lg visible-md">
     	 
		     <div class="media"> 
               <img class="img-circle" src="${basepath}/common/images/socialMedia/BWJT_wechat-logo.jpg" alt="...">
               
          		<div class="media-body">
          			<a href="${c5_1.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_1.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_1.datas['0'].mainTitle}">${fn:substring(c5_1.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_1.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
      		 </div>
      		 
      		  <div class="media"> 
                <img class="img-circle" src="${basepath}/common/images/SGGT_wechat-logo.jpg" alt="...">
          		<div class="media-body">
          			<a href="${c5_2.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_2.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_2.datas['0'].mainTitle}">${fn:substring(c5_2.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_2.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
      		 </div>
      		 
      		  <div class="media"> 
              <img class="img-circle" src="${basepath}/common/images/SGTW_wechat-logo.jpg" alt="...">
          		<div class="media-body">
          			<a href="${c5_3.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_3.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_3.datas['0'].mainTitle}">${fn:substring(c5_3.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_3.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
      		 </div>
      		
               
        </div>
        <!--  大屏幕结束  -->
        
        <!-- 针对小屏幕和超小屏幕-->
        <div class=" visible-sm visible-xs">
          
	           <div class="media-sm-xs"> 
                   <img class="img-circle" src="${basepath}/common/images/socialMedia/BWJT_wechat-logo.jpg" alt="...">
          		<div class="media-body">
          			<a href="${c5_1.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_1.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_1.datas['0'].mainTitle}">${fn:substring(c5_1.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_1.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
               </div>
               
               <div class="media-sm-xs"> 
                   <img class="img-circle" src="${basepath}/common/images/SGGT_wechat-logo.jpg" alt="...">
          		<div class="media-body">
          			<a href="${c5_2.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_2.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_2.datas['0'].mainTitle}">${fn:substring(c5_2.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_2.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
               </div>
               
               <div class="media-sm-xs"> 
                    <img class="img-circle" src="${basepath}/common/images/SGTW_wechat-logo.jpg" alt="...">
          		<div class="media-body">
          			<a href="${c5_3.datas['0'].secondTitle}">
         			 <div class="media-name">${c5_3.datas['0'].author}</div>
         			 
         			 <c:choose>
 						<c:when test="${fn:length(news.mainTitle) >= 20}">
 						 	<div class="media-essay-title" title="${c5_3.datas['0'].mainTitle}">${fn:substring(c5_3.datas['0'].mainTitle,0,20)}...</div>
                        </c:when>
                       	<c:otherwise>
                          	 <div class="media-essay-title">${c5_3.datas['0'].mainTitle}</div>
                        </c:otherwise>
                     </c:choose>
          			</a>
         		 </div>
               </div>
         
        </div>
          <!-- 超小屏幕结束 -->
    </div><!-- 新媒体结束 -->
