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
<div class="container centerMe" >
	<h1>Online Art Gallery</h1>
	<br>
	<br>
</div>

<div class="container" >
	<form action="goCreateArtPiece.do" class="container-fluid justify-content-start">
		<button class="btn btn-outline-success me-2" type="submit">UPLOAD ART PIECE</button>
	</form>
	<br>
	<form action="showAll.do" class="container-fluid justify-content-start">
		<button class="btn btn-outline-success me-2" type="submit">SHOW ALL FILMS</button>
	</form>
	<br>
	<form action="getArtPiece.do" class="container-fluid justify-content-start">
		<button class="btn btn-outline-success me-2" type="submit">FIND BY ID</button>
		<input type="number" name="id" value="0"/>
	</form>

</div>

</body>
</html>