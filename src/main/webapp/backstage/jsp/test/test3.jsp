<%@ page language="java" pageEncoding="UTF-8"%>
<head>
<title>上传头像</title>
<link href="${basepath}/backstage/jsp/test/cropper.min.css" rel="stylesheet">
<link href="${basepath}/backstage/jsp/test/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	text-align: center;
}

#user-photo {
	width: 400px;
	height: 300px;
	margin-top: 10px;
}

#photo {
	max-width: 100%;
	max-height: 350px;
}

.img-preview-box {
	text-align: center;
}

.img-preview-box>div {
	display: inline-block;;
	margin-right: 10px;
}

.img-preview {
	overflow: hidden;
}

.img-preview-box .img-preview-lg {
	width: 250px;
	height: 150px;
}
</style>
</head>
<body>
	<button class="btn btn-primary" data-target="#changeModal" data-toggle="modal">打开</button>
	<br />
	<div class="user-photo-box">
		<img id="user-photo" src="">
	</div>
	</div>
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
					<button class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(4,3);">4:3</button>
					<button class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(16,9);">16:9</button>
					<button class="btn btn-primary disabled" disabled="true" onclick="setAspectRatio(1,1);">1:1</button>
					<button class="btn btn-primary disabled" disabled="true" onclick="rotate2();">逆时针</button>
					<button class="btn btn-primary disabled" disabled="true" onclick="reset();">复位</button>
					<button class="btn btn-primary disabled" disabled="true" onclick="sendPhoto();">提交</button>
					<button class="btn btn-close" aria-hidden="true" data-dismiss="modal">取消</button>

				</div>
			</div>
		</div>
	</div>
	<script>
	
	//-----------------------------
	var rotate1 = function() {              //翻转
		$('#photo').cropper('rotate', 15);
	}
	var rotate2 = function() {              //翻转
		$('#photo').cropper('rotate', -15);
	}
	
	var reset = function(){                 //复位
		$('#photo').cropper('reset');
	}
	var setAspectRatio = function(w,h){//设置宽高比
		$('#photo').cropper('setAspectRatio',w/h);
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
        width: 300,
        height: 300
    }).toDataURL('image/png');
    
    
    var formData  = new FormData();
    var nameImg = new Date().getTime()+ '.png';
    var img = convertBase64UrlToBlob(photo);
    formData.append("file",img,nameImg);
    formData.append("id","111");
    formData.append("type","image");
    
    $.ajax({
        url: '${basepath}/file_upload.do', // 要上传的地址
        type : 'POST',
        data: formData,
        dataType: 'json',
        async: true,
		processData: false,
		contentType: false,
        success: function (data) {
           
            	alert(data.url);
                // 将上传的头像的地址填入，为保证不载入缓存加个随机数
                document.getElementById("user-photo").src='${basepath}/'+data.url;
               
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

