<%@ page language="java" pageEncoding="UTF-8" import="java.util.UUID"%>


<head>
<title>上传头像</title>
<link href="${basepath}/backstage/jsp/share/upload/cropper.min.css" rel="stylesheet">
<link href="${basepath}/backstage/jsp/share/upload/uploadImage.css" rel="stylesheet">
</head>
<body>


	<div class="user-photo-box">
		<c:choose>
			<c:when test="${news.picList[0].url ne null}">
				<img id="user-photo" src="${basepath}/${news.picList[0].url}" height="${myHeight/2}px" width="${myWidth/2}px" />
			</c:when>
			<c:otherwise>
				<img id="user-photo" src="${basepath}/backstage/images/xgt.png" height="${myHeight/2}px" width="${myWidth/2}px" />
			</c:otherwise>
		</c:choose>

	</div>
	
	<c:choose>
		<c:when test="${news.picList[0].url ne null}">
			<button type="button" id="del" class="btn btn-danger" onclick="deleleImage();">删除原图</button>
			<button type="button" style="display:none" id="up" class="btn btn-primary" data-target="#changeModal" data-toggle="modal">上传图片</button>
		</c:when>
		<c:otherwise>
		    <button type="button" style="display:none" id="del" class="btn btn-danger" onclick="deleleImage();">删除原图</button>
			<button type="button" id="up" class="btn btn-primary" data-target="#changeModal" data-toggle="modal">上传图片</button>
		</c:otherwise>
	</c:choose>
	

	<div class="modal fade" id="changeModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-primary">
						<i class="fa fa-pencil"></i> 图像修改
					</h4>
				</div>
				<div class="modal-body">
					<p class="tip-info text-center">未选择图片</p>
					<div class="img-container hidden">
						<img src="" alt="" id="photo">
					</div>
					<div class="img-preview-box hidden">
						<hr>
						<span>图片预览：</span><br>
						<div class="img-preview img-preview-lg"></div>
					</div>
				</div>
				<div class="modal-footer">
					<label class="btn btn-danger pull-left" for="photoInput"> <input type="file" class="sr-only" id="photoInput" accept="image/*"> <span>打开图片</span>
					</label>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(4,3);">4:3</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(16,9);">16:9</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(3,2);">3:2</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="rotate1();">顺时针</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="rotate2();">逆时针</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="reset1();">复位</button>
					<button type="button" class="btn btn-primary disabled" disabled="true" onclick="sendPhoto();">提交</button>
					<!-- 	<button type="button" class="btn btn-close" aria-hidden="true" data-dismiss="modal">取消</button> -->

				</div>
			</div>
		</div>
	</div>

</body>
</html>
<script type="text/javascript" src="${basepath}/backstage/js/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="${basepath}/backstage/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${basepath}/backstage/jsp/share/upload/cropper.min.js"></script>
<script>
	
	//-----------------------------
	var rotate1 = function() {              //翻转
		$('#photo').cropper('rotate', 15);
	}
	var rotate2 = function() {              //翻转
		$('#photo').cropper('rotate', -15);
	}
	
	var reset1 = function(){                 //复位
		$('#photo').cropper('reset');
	}
	var setAspectRatio = function(w,h){//设置宽高比
		$('#photo').cropper('setAspectRatio',w/h);
	}

	</script>
<script type="text/javascript">
var deleleImage = function(){
	jQuery.ajax({
        type:'post',
        url:'${basepath}/file_del.do?id=${uuid}',
        cache:false,
        dataType:'json',
        success:function(data){
        	
        	document.getElementById("user-photo").src='${basepath}/backstage/images/xgt.png';
        	 $('#up').show();
             $('#del').hide();
        }
    });
	return false;

}
</script>

<script type="text/javascript">
		var initCropperInModal = function(img, input, modal) {
			var $image = img;
			var $inputImage = input;
			var $modal = modal;
			var options = {
				aspectRatio : 4/3, // 纵横比
				viewMode : 2,
				preview : '.img-preview' // 预览图的class名
			};
			// 模态框隐藏后需要保存的数据对象
			var saveData = {};
			var URL = window.URL || window.webkitURL;
			var blobURL;
			$modal.on('show.bs.modal', function() {
				// 如果打开模态框时没有选择文件就点击“打开图片”按钮
				if (!$inputImage.val()) {
					$inputImage.click();
				}
			}).on(
					'shown.bs.modal',
					function() {
						// 重新创建
						$image.cropper($.extend(options, {
							ready : function() {
								// 当剪切界面就绪后，恢复数据
								if (saveData.canvasData) {
									$image.cropper('setCanvasData',
											saveData.canvasData);
									$image.cropper('setCropBoxData',
											saveData.cropBoxData);
								}
							}
						}));
					}).on('hidden.bs.modal', function() {
				// 保存相关数据
				saveData.cropBoxData = $image.cropper('getCropBoxData');
				saveData.canvasData = $image.cropper('getCanvasData');
				// 销毁并将图片保存在img标签
				$image.cropper('destroy').attr('src', blobURL);
			});
			if (URL) {
				$inputImage
						.change(function() {
							var files = this.files;
							var file;
							if (!$image.data('cropper')) {
								return;
							}
							if (files && files.length) {
								file = files[0];
								if (/^image\/\w+$/.test(file.type)) {

									if (blobURL) {
										URL.revokeObjectURL(blobURL);
									}
									blobURL = URL.createObjectURL(file);

									// 重置cropper，将图像替换
									$image.cropper('reset').cropper('replace',
											blobURL);
									// 选择文件后，显示和隐藏相关内容
									$('.img-container').removeClass('hidden');
									$('.img-preview-box').removeClass('hidden');
									$('#changeModal .disabled').removeAttr(
											'disabled').removeClass('disabled');
									$('#changeModal .tip-info').addClass(
											'hidden');

								} else {
									window.alert('请选择一个图像文件！');
								}
							}
						});
			} else {
				$inputImage.prop('disabled', true).addClass('disabled');
			}
		}

		$(function() {
			initCropperInModal($('#photo'), $('#photoInput'), $('#changeModal'));
		});
	</script>
<script>


    var sendPhoto = function () {
    // 得到PNG格式的dataURL
    var photo = $('#photo').cropper('getCroppedCanvas', {
        width: '${myWidth}',
        height: '${myHeight}'
    }).toDataURL('image/png');
  
    var formData  = new FormData();
    var nameImg = new Date().getTime()+ '.png';
    var img = convertBase64UrlToBlob(photo);
    formData.append("file",img,nameImg);
    formData.append("type","image");
    formData.append("id",'${uuid}');
    $.ajax({
        url: '${basepath}/file_upload.do', // 要上传的地址
        type : 'POST',
        data: formData,
        dataType: 'json',
        async: true,
		processData: false,
		contentType: false,
        success: function (data) {
           
            	
                // 将上传的头像的地址填入，为保证不载入缓存加个随机数
                document.getElementById("user-photo").src='${basepath}/'+data.url;
             
                //document.getElementById("up").hide();
                $('#up').hide();
                $('#del').show();
                //document.getElementById("del").show();
                $('#changeModal').modal('hide');
           
        }
    });
}
    function convertBase64UrlToBlob(urlData){

    　　　　var bytes=window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte           

    　　　　//处理异常,将ascii码小于0的转换为大于0     

    　　　　var ab = new ArrayBuffer(bytes.length);     

    　　　　var ia = new Uint8Array(ab);     

    　　　　for (var i = 0; i < bytes.length; i++) {          ia[i] = bytes.charCodeAt(i);      }       

    　　　　return new Blob( [ab] , {type : 'image/png'});  

    　　} 
	</script>

