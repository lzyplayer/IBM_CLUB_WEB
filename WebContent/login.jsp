<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
//以下代码测试能否获取在action中自定义的session，如果该段文字无乱码地正常显示则没有问题
String info="";
if(session.getAttribute("infofromAction2jsp")!=null){
	info=(String)session.getAttribute("infofromAction2jsp");
}
//以下的setAttribute是测试能否正常从页面设置session并发回后端
session.setAttribute("infofromjsp2Action", "这是一段测试从jsp到Servlet能否正常发送session的文字，若该文字在控制台中无乱码地正常显示则没有问题。");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<%=info %>
    <form action="Login" method="post">
	    ID:<input type="text" name="id"/><font color="red"><s:fielderror fieldName="id"/></font><br/>
	    password:<input type="password" name="password"/><font color="red"><s:fielderror fieldName="password"/></font><br/>
	    <s:token></s:token>
	    <input type="submit" value="提交"/>
    </form>
	<font color="red"><s:fielderror fieldName="loginfault"/></font>
</body>
</html>