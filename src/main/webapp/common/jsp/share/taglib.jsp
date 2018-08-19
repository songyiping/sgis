<%@ page language="java" pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    int port = request.getServerPort();
    String basepath  = null;
    if(port==80){
        basepath = request.getScheme()+"://"+request.getServerName()+path;
    }else{
        basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    }
    request.setAttribute("basepath", basepath);
    
    String system_name = "宝武集团韶关钢铁有限公司";
    request.setAttribute("systemName", system_name);
    
%>