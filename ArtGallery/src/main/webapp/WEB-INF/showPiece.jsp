<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${art.pieceName}</title>
<%@include file="bootStrapHead.jsp"%>
</head>
<body>

	<nav class="navbar bg-light">
		<form action="home.do" class="container-fluid justify-content-start">
			<button class="btn btn-outline-success me-2" type="submit">Home</button>
		</form>
	</nav>


	<c:choose>
		<c:when test="${! empty art}">
			<div class="container">

				<h1>${art.pieceName}(${art.yearCreated})</h1>

				<div>
					<h4>${art.artistName}</h4>
					<img src="${art.pictureUrl}" width="500" height="600">
					<p>${art.description}</p>
					<h5>Medium: ${art.medium}</h5>
				</div>


				<div>
					<form action="goToUpdatePage.do"
						class="container-fluid justify-content-start">
						<button class="btn btn-outline-success me-2" type="submit">UPDATE FILM</button>
						<input type="hidden" name="id" value = "${art.id}" />
					</form>
				</div>


			</div>
		</c:when>
		<c:otherwise>
		No Art Piece Found
		</c:otherwise>
	</c:choose>






</body>
</html>