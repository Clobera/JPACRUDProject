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
				<div class="container">

					<h1>All Art Pieces</h1>

					<div>
						<table>
							<c:forEach var="piece" items="${list}">
								<tr>
									<td><a href="getArtPiece.do?id=${piece.id}">${piece.pieceName}</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>

				</div>
			</c:when>
			<c:otherwise>
		No Film Found
		</c:otherwise>
		</c:choose>

	</div>

</body>
</html>