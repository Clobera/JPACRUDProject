<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Art Gallery</title>
<%@include file="bootStrapHead.jsp"%>
</head>
<body>
	<h1>Online Art Gallery</h1>

	<form action="showAll.do" class="container-fluid justify-content-start">
		<button class="btn btn-outline-success me-2" type="submit">SHOW ALL FILMS</button>
	</form>
	<br>
	<br>
	<form action="getArtPiece.do" class="container-fluid justify-content-start">
		<button class="btn btn-outline-success me-2" type="submit">FIND BY ID</button>
		<input type="text" name="id" />
	</form>


</body>
</html>