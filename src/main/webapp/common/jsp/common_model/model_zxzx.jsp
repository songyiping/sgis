<%@ page language="java" pageEncoding="UTF-8"%>
 <div class="col-md-4 content-sectors"> 
      
      <!--  NEWS-->
      <div class="content-sectors-header" >
        <h4>最新资讯<span class="more"><a href="${basepath}/list/c1.do">更多</a></span></h4>
        <h5>NEWS</h5>
      </div>
      
      <!-- SLIDER BOX -->

     
      <div id="demo3" class="slideBox" style="width:100%; height:100%">
          <ul class="items">
            <c:forEach items="${cc1.datas}" var="news" varStatus="zxzx">
              <c:if test ="${news.picList[0].url ne null}"> 
           <!--   无图片不在首页显示 -->
                <li><a href="${basepath}/check/${news.newsId}.do" title="${news.mainTitle}">
                    <img src="${basepath}/${news.picList[0].url}" alt="">
                    </a>
                 </li>
                </c:if> 
          </c:forEach>
          </ul>
        </div>
      <!-- SLIDER BOX END --> 
      <!-- NEWS END --> 
      
    </div>   