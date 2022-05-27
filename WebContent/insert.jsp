<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
    
<%
   	//값 가져오기
   	String name = request.getParameter("name");
   	String password = request.getParameter("password");
   	String content = request.getParameter("content");
   	String date = request.getParameter("reg_date");
   	
   	//객체로 만들어서 insert
   	GuestBookDao guestDao = new GuestBookDao();
   	guestDao.guestInsert(new GuestBookVo(name, password, content, date));
   	
   	response.sendRedirect("./addList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>