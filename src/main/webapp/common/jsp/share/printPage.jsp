<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 打印页面和置顶 -->
<div class="pull-right">
	<span><a href="" onClick="printpage()"><img src="${basepath}/common/images/print_icon.png"></a></span> <span><a href="" onClick="totop()"><img src="${basepath}/common/images/totop.png"></a></span>
</div>
<!-- 打印页面和置顶 END-->
<style media="print">
@page {
	size: auto; /* auto is the initial value */
	margin: 0mm; /* this affects the margin in the printer settings */
}
</style>
<script type="text/javascript">
		function printpage() {
			
				  bdhtml=window.document.body.innerHTML; //获得body标签内的全部html代码
				  sprnstr="<!--startprint-->"; //声明一个字符串，用于表示打印的起始位置
				  eprnstr="<!--endprint-->"; //标示打印的结束位置
				  prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); //查找打印的起始字符串并加上17，因为<!--startprint-->的长度为17，所以要加17，这样打印时不会把标示打印出来
				  prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr)); //和上边的意思差不多
				  bdhtml = bdhtml.replace(/http.*do/g,'');
				  window.document.body.innerHTML=bdhtml; //通过window对象得到body对象并将当前窗体的内容设置为要打印起始标示符和结束标示符之间的内容，这样打印出来就只有需要的部分，而其他没用的信息都不会有的
				  window.print(); 
				 }
	
	</script>

<script type="text/javascript">
		function totop() {
			document.body.scrollTop = document.documentElement.scrollTop = 0;
		}
	</script>