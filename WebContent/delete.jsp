<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	int delNo = Integer.parseInt(request.getParameter("del_no"));
	String delPw = request.getParameter("del_pw");
	
	//삭제할 게스트를 찾아옴
	GuestBookDao guestDao = new GuestBookDao();
	GuestBookVo guest = guestDao.getGuest(delNo);
	
	if(guest.getPassword().equals(delPw)) {
		//입력한 비밀번호가 같으면 삭제
		guestDao.guestDelete(delNo);
		response.sendRedirect("./addList.jsp");
	} else {
		response.sendRedirect("./addList.jsp");
	}
	
	
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