<!--  三级新闻列表 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-lg-4">
	<div class="panel-body custom-tab">
		<section class="panel">
			<div class="tab-content">
				<c:forEach items="${allList}" var="father">
					<c:if test="${fn:length(father.newsTypeId) eq '2'}">
						<div class="tab-pane" id="${father.newsTypeId}">
							<div class="select-panel" style="padding: 20px">
								<div style="margin-bottom: 20px">
									<h4>
										三级新闻列表 <small style="color: red">${father.newsTypeName}</small>
									</h4>
									<button class="btn btn-success">新增</button>

								</div>
								<table class="table">
									<thead style="background-color: #666; color: #fff">
										<tr>

											<td>类型</td>
											<td>编号</td>
											<td>详情</td>
											<td>状态</td>
										</tr>
									</thead>



									<tbody style="font-weight: normal;">
										<c:forEach items="${allList}" var="son">
											<c:if test="${son.fatherId eq father.newsTypeId}">

												<tr>

													<td><a href="#${father.newsTypeId}" data-toggle="tab">${son.newsTypeName}</a></td>
													<td>${son.newsTypeId}</td>

													<td>详情</td>
													<c:choose>
														<c:when test="${son.isVisible eq '1'}">
															<td>锁定</td>
														</c:when>
														<c:otherwise>
															<td>可编辑</td>
														</c:otherwise>
													</c:choose>
												</tr>

											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- end tab-pane active -->
					</c:if>
				</c:forEach>
			</div>
			<!-- tab-content -->
		</section>
	</div>

</div>
<!-- end 三级新闻列表 -->