<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Art Pieces</title>
<%@include file="bootStrapHead.jsp"%>
</head>
<body>
	<nav class="navbar bg-light">
		<form action="home.do" class="container-fluid justify-content-start">
			<button class="btn btn-outline-success me-2" type="submit">Home</button>
		</form>
	</nav>


	<div>
		<c:choose>
			<c:when test="${! empty list}">
				<div class="container centerMe">

					<h1>All Art Pieces</h1>
					<br>
				</div>

				<div class="cards">
					<c:forEach var="piece" items="${list}">
						<div class="card">
							<img alt="" src="${piece.pictureUrl}" class="card__image">
							<div class="card__content">
								<a href="getArtPiece.do?id=${piece.id}" class="card__link">${piece.pieceName}</a>
							</div>
						</div>

					</c:forEach>
				</div>

			</c:when>
			<c:otherwise>
		No Film Found
		</c:otherwise>
		</c:choose>

	</div>

</body>
</html>