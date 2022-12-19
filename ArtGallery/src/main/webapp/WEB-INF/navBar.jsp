<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="bootStrapHead.jsp"%>
</head>
<body>
	<nav class="navbar navbar-expand">
		<div class="container-fluid">
		<form action="home.do" class="container-fluid justify-content-start">
			<button class="btn me-2" type="submit"><strong>CCL</strong></button>
		</form>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<form class="d-flex" action="showAll.do">
							<button class="btn glow" type="submit">SHOW ALL</button>

						</form>
					</li>
					<li class="nav-item">
						<form class="d-flex" action="goCreateArtPiece.do">
							<button class="btn glow" type="submit">UPLOAD</button>

						</form>
					</li>
					<!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
					<li class="nav-item">
						<form class="d-flex" action="getArtPiece.do">
							<button class="btn glow" type="submit">SEARCH ID</button>
							<input class="form-control me-2" type="search" value="0"
								name="id" placeholder="Find a Piece by ID" aria-label="Search">
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>