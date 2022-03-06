<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Customer Login</title>
	<link rel="stylesheet" href="css/style.css" >
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div align="center">
		<h2>Customer Login</h2>
		
		<c:if test="${message != null}">
			<div align="center">
				<h4 class="message">${message}</h4>
			</div>
		</c:if>
		
		<form action="login" method="post">
			<table>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email" size="20" required minlength="5" maxlength="64"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" size="20" required minlength="5" maxlength="16"></td>
				</tr>		
				<tr>
					<td colspan="2" align="center">
						<button type="submit">Login</button>
					</td>
				</tr>		
			</table>
		</form>
	</div>
	
	<jsp:directive.include file="footer.jsp" />
</body>
</html>