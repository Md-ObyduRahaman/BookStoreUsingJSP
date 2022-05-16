<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>Evergreen Books - Online Books Store</title>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>	
</head>
<body>
<div class="container">

	<jsp:directive.include file="header.jsp" />
	
	<div class="row text-center">
		<div class="col"><h2>New Books:</h2></div>
	</div>
	
	<div class="row justify-content-center mb-3">
		<c:forEach items="${listNewBooks}" var="book">
				<jsp:directive.include file="book_group.jsp" />
		</c:forEach>	
	</div>
	
	<div class="row text-center">
		<div class="col"><h2>Best-Selling Books:</h2></div>
	</div>	
	
	<div class="row justify-content-center mb-3">
		<c:forEach items="${listBestSellingBooks}" var="book">
			<jsp:directive.include file="book_group.jsp" />
		</c:forEach>	
	</div>
	
	<div class="row text-center">
		<div class="col"><h2>Most-favored Books:</h2></div>
	</div>	
	
	<div class="row justify-content-center mb-3">
		<c:forEach items="${listFavoredBooks}" var="book">
			<jsp:directive.include file="book_group.jsp" />
		</c:forEach>	
	</div>
	
	<jsp:directive.include file="footer.jsp" />
</div>	
</body>
</html>