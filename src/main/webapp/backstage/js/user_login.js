
function submitForm() {
	var oUsername = $("input[name=username]");
	
	if(oUsername.val().trim().length == 0) {
		$("#messBox").html("请输入用户名");
		oUsername.focus();
		return;
	}
	var oPassword = $("input[name=password]");
	if(oPassword.val().trim().length == 0) {
		$("#messBox").html("请输入密码");
		oPassword.focus();
		return;
	}
	
	var url = "login";
	var para = getFormPara($("form[name=loginForm]"));
	
	$.get(url, para, function(data) {

		switch (data) {
		case "success": {
			$("#messBox").html("登陆中...");
			location = "home.action";
		}break;

		case "username error": $("#messBox").html("用户不存在");break;
		case "password error": $("#messBox").html("密码错误");break;
		default: $("#messBox").html("未知错误");break;
		}
			
	});
}
