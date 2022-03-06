<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Register as a Customer</title>
	
	<link rel="stylesheet" href="css/style.css" >
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div align="center">
		<h2 class="pageheading">
			Edit My Profile
		</h2>
	</div>
	
	<div align="center">
		<form action="update_profile" method="post" style="max-width: 800px; margin: 0 auto;">
		
		<table class="form">
			<tr>
				<td align="right">E-mail:</td>
				<td align="left"><b>${loggedCustomer.email}</b> (Cannot be changed)</td>
			</tr>
			<tr>
				<td align="right">First Name:</td>
				<td align="left"><input type="text" name="firstname" size="45" value="${loggedCustomer.firstname}" required minlength="2" maxlength="30" /></td>
			</tr>
			<tr>
				<td align="right">Last Name:</td>
				<td align="left"><input type="text" name="lastname" size="45" value="${loggedCustomer.lastname}" required minlength="2" maxlength="30" /></td>
			</tr>			
			<tr>
				<td align="right">Phone Number:</td>
				<td align="left"><input type="text" name="phone" size="45" value="${loggedCustomer.phone}" required minlength="9" maxlength="15" /></td>
			</tr>
			<tr>
				<td align="right">Address Line 1:</td>
				<td align="left"><input type="text" name="address1" size="45" value="${loggedCustomer.addressLine1}" required minlength="10" maxlength="128" /></td>
			</tr>
			<tr>
				<td align="right">Address Line 2:</td>
				<td align="left"><input type="text" name="address2" size="45" value="${loggedCustomer.addressLine2}" required maxlength="128" /></td>
			</tr>
			<tr>
				<td align="right">City:</td>
				<td align="left"><input type="text" name="city" size="45" value="${loggedCustomer.city}" required minlength="2" maxlength="32" /></td>
			</tr>
			<tr>
				<td align="right">State:</td>
				<td align="left"><input type="text" name="state" size="45" value="${loggedCustomer.state}" required minlength="2" maxlength="45" /></td>
			</tr>						
			<tr>
				<td align="right">Zip Code:</td>
				<td align="left"><input type="text" name="zipCode" size="45" value="${loggedCustomer.zipcode}" required minlength="3" maxlength="24" /></td>
			</tr>
			<tr>
				<td align="right">Country:</td>
				<td align="left">
					<select name="country" required>
					<c:forEach items="${mapCountries}" var="country">
						<option value="${country.value}" <c:if test='${loggedCustomer.country eq country.value}'>selected='selected'</c:if> >${country.key}</option>
					</c:forEach>
					</select>				
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<i>(Leave password fields blank if you don't want to change password)</i>
				</td>
			</tr>
			<tr>
				<td align="right">Password:</td>
				<td align="left">
					<input type="password" id="password" name="password" size="45" maxlength="16" 
						oninput="checkPasswordMatch(document.getElementById('confirmPassword'))"/>
				</td>
			</tr>
			<tr>
				<td align="right">Confirm Password:</td>
				<td align="left">
					<input type="password" name="confirmPassword" id="confirmPassword" size="45" maxlength="16" oninput="checkPasswordMatch(this)" />
				</td>
			</tr>																			
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="history.go(-1)">Cancel</button>
				</td>
			</tr>				
		</table>
		</form>
	</div>

	<jsp:directive.include file="footer.jsp" />
<script type="text/javascript" src="js/customer-form.js"></script>	
</body>
</html>