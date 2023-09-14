<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "user.UserDAO" %>
<%@ page import= "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="user" class = "user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>JSP</title>
</head>
<body>
 	<%
 		PrintWriter script = response.getWriter();
 		String userID = null;
		
		if(session.getAttribute("userID") != null){			
			userID = (String) session.getAttribute("userID");
		} 
		
		if(userID != null){
			script.println("<script>");
			script.println("alert('You are already logged in.')");
			script.println("history.back()");
			script.println("</script>");
		}
		

 		if(user.getUserID() == null ||user.getUserPassword() == null ||user.getUserName()== null ||user.getUserGender()== null ||user.getUserEmail()== null ){

 			script.println("<script>");
 			script.println("alert('There are missing entries.')");
 			script.println("history.back()");
 			script.println("</script>");
 			
		}else{
			
			UserDAO userDAO = new UserDAO();
	 		int result = userDAO.join(user);

	 		if(result == -1){
	 			script.println("<script>");
	 			script.println("alert('It is already has an ID.')");
	 			script.println("history.back()");
	 			script.println("</script>");
	 			
	 		}else{
	 			
	 			session.setAttribute("userID", user.getUserID());
	 			
	  			script.println("<script>");
	  			script.println("location.href = 'main.jsp'");
 	 			script.println("</script>");
	 			
	 		} 
			
		}
 	 
 	%>
</body>
</html>