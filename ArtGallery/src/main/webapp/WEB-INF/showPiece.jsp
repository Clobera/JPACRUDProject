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
	<%@include file="navBar.jsp"%>

	<c:choose>
		<c:when test="${! empty art}">
			<div class="container">

				<h1>${art.pieceName}(${art.yearCreated})</h1>

				<div>
					<h4>by ${art.artistName} (ID: ${art.id})</h4>
					<img src="${art.pictureUrl}" >
					<p>${art.description}</p>
					<h5>Medium: ${art.medium}</h5>
				</div>


				<div>
					<form action="goToUpdatePage.do"
						class="container-fluid justify-content-start">
						<button class="btn btn-outline-success me-2" type="submit">UPDATE</button>
						<input type="hidden" name="id" value = "${art.id}" />
					</form>
				</div>
				
				<div>
					<form action="deleteArtPiece.do" method="GET"
						class="container-fluid justify-content-start">
						<button class="btn btn-outline-success me-2" type="submit">DELETE</button>
						<input type="hidden" name="id" value = "${art.id}" />
					</form>
				</div>
				<br>
				<br>
				<br>


			</div>
		</c:when>
		<c:otherwise>
		<div class="container centerMe">
		<h1>
		No Art Piece Found
		</h1>
		<img alt="" src="https://i.pinimg.com/originals/dd/7a/70/dd7a7047f5b944d7f8b17b81a1185722.gif">
		
		</div>
		</c:otherwise>
	</c:choose>






</body>
</html>