<%@ page language="java" pageEncoding="UTF-8" import="java.util.UUID"%>


<head>
<title>上传头像</title>
<link href="${basepath}/backstage/jsp/share/upload/cropper.min.css" rel="stylesheet">
<link href="${basepath}/backstage/jsp/share/upload/uploadImage.css" rel="stylesheet">
</head>
<body>

       <a data-toggle="modal" href="#addVideo" id="addVideoLink" style="font-weight: bold">
		<h5 style="color: red">添加视频<h5>
		</a>
	   <!-- 新增视频 -->
	   <!-- Modal -->
	   <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addVideo" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加视频</h4>
				</div>
				<div class="modal-body">
					<p>请选择视频内容</p>
					<div class="fileupload-new">
					<video src="${basepath}/${news.videoList[0].url}" id="video"width="350px" controls> Your browser does not support the video tag.</video>
					</div>
                    <div style="margin-top: 10px; margin-bottom: 20px">
					<span class="label label-warning">要求</span> 
					<span>上传视频大小：小于500M,上传视频格式：mp4或ogg</span>
					</div>
 					<div>
					<span class="btn btn-default btn-file"> <span class="fileupload"><i class="fa fa-paper-clip"></i>
																选择文件</span> 
					<input type="file" name="file" id="videofile" class="default">
					</span>
                    </div>
                 </div><!-- modal-body-end -->
												<div class="modal-footer">
													<button class="btn btn-danger" type="button"
														onclick="return ajaxVideoUpload()">上传</button>
													<button data-dismiss="modal" class="btn btn-default"
														type="button" onclick="return delVideo()">取消</button>
													<button data-dismiss="modal" class="btn btn-primary"
														type="button" onclick="return offVideo()">完成</button>
												</div>
											</div>
										</div>
									</div>
									<!-- modal -->

	



</body>
</html>
<script type="text/javascript" src="${basepath}/backstage/js/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="${basepath}/backstage/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${basepath}/backstage/jsp/share/upload/cropper.min.js"></script>

	<script type="text/javascript">
		function offVideo() {
			document.getElementById("video").pause;
			document.getElementById("addVideoLink").innerText = "视频已经添加";
		}
		function delVideo() {
			document.getElementById("video").src = null;
		}
		function ajaxVideoUpload() {

			if (videoJudge()) {
				$("#loading.gif").ajaxStart(function() {
					$(this).show();
				})//开始上传文件时显示一个图片
				.ajaxComplete(function() {
					$(this).hide();
				});//文件上传完成将图片隐藏起来

				$.ajaxFileUpload({
					url : '${basepath}/file_upload.do?id=${uuid}&type=video',//用于文件上传的服务器端请求地址
					secureuri : false,//一般设置为false
					fileElementId : 'videofile', //文件上传空间的id属性  <input type="file" id="file" name="file" />
					dataType : 'String',//返回值类型 一般设置为json
					success : function(data, status) //服务器成功响应处理函数
					{
						var reg = /<pre.+?>(.+)<\/pre>/g;
						var result = data.match(reg);
						data = RegExp.$1;
						var obj = JSON.parse(data);

						document.getElementById("secondTitle").value = obj.url;
						document.getElementById("video").src = '${basepath}/'
								+ obj.url;
						alert("文件上传成功:\n文件上类型:" + obj.type + "\n文件大小:"
								+ obj.size / 1048576 + "M");

					},
					error : function(data, status, e)//服务器响应失败处理函数
					{
						alert("错误");
					}
				})

			}
		}
		
		function videoJudge() {

			var filePath = document.getElementById("videofile").value;
			if (filePath.length < 1) {
				alert("请选择要上传的文件");
				return false;
			}
			var fileLx = filePath.toString().substring(
					filePath.toString().lastIndexOf(".") + 1);

			if (fileLx == "ogg" || fileLx == "mp4") {
				if (filePath.length > 524200000) {
					alert("超过限定大小");
					return false;
				}

				return true;
			}
			alert("文件类型错误");
			return false;
		}
	</script>
