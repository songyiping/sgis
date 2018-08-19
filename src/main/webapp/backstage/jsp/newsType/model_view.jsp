
<!-- 详情页模态框 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div aria-hidden="true" aria-labelledby="myModalLabel${son.newsTypeId}"
	role="dialog" tabindex="-1" id="modal${son.newsTypeId}"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content" style="width: 600px; height: 550px;">
			<div class="modal-header">
				<h4 class="modal-title">${son.newsTypeName}
					<small style="color: red">详细信息</small>
				</h4>
			</div>
			<div class="modal-body">
				<div>
					<input type="checkbox" class="js-switch-blue" checked />
				</div>
			</div>

			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
				<button class="btn btn-primary" type="button"
					onclick="return get_edit_info(${son.newsTypeId})">确认</button>
			</div>
		</div>
	</div>
</div>