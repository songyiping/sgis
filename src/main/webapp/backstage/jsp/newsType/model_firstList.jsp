<!-- 一级导航 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-lg-4">

	<div class="panel-body custom-tab">
		<section class="panel">
			<div class="select-panel" style="padding: 20px">
				<div style="margin-bottom: 20px">
					<h4>
						一级新闻列表 <small style="color: red">(总表)</small>
					</h4>
					<button class="btn btn-success" data-toggle="modal" href="#myModal">新增</button>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>类型</td>
							<td>编号</td>
							<td>详情</td>
							<td>状态</td>
						</tr>
					</thead>
					<tbody style="font-weight: normal;">
						<c:forEach items="${allList}" var="son">
							<c:if test="${son.fatherId eq 'FATHER'}">
								<tr>
									<td><a href="#${son.newsTypeId}" data-toggle="tab">${son.newsTypeName}</a></td>
									<td>${son.newsTypeId}</td>
									<td><a id="Bar_btn" data-toggle="modal" href="#modal${son.newsTypeId}" title="详情">详情</td>
									<c:choose>
										<c:when test="${son.isVisible eq '1'}">
											<td>锁定</td>
										</c:when>
										<c:otherwise>
											<td>可编辑</td>
										</c:otherwise>
									</c:choose>
								</tr>
								<%@include file="model_view.jsp" %>
							</c:if>	
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>

	</div>
</div>
<script type="text/javascript">
$('#editVoince').on('show.bs.modal', function (event) {  
    var firstBar_btn = $(event.relatedTarget); //触发事件的按钮  
    var modal = $(this);  //当前模态框  
    var modalId = btn.data('Bar_btn');   //解析出data-id的内容  
    var content = btnThis.closest('tr').find('td').eq(2).text();  
    modal.find('.Bar_btn').val(firstBar_btn);           
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
                    	 window.location.href= "${basepath}/backstage/${newsType.getId()}.do";
                    },
                    error:function()
                    {
                        alert('请求出错');
                    }
                });
        return true; 

    }
 </script>  