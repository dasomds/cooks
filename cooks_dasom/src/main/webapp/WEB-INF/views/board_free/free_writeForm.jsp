<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Dash Board-Custom</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="community/css/shop-homepage.css" rel="stylesheet">
<link href='common/css/modalStyle.css' rel='stylesheet'>


<!-- jQuery -->
<script src="js/jquery-1.11.1.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- Custom JS -->
<script src="common/js/common.js"></script>
<script src="common/js/signUp.js"></script>
</head>


<body>
<jsp:include page="../common/navTop.jsp"/>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="row row-offcanvas row-offcanvas-left">
				<div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar"
					role="navigation">

					<ul class="nav nav-sidebar" style="margin-top: 15px;">
						<li><a href="#">자유게시판</a></li>
						<li class="active"><a href="#">자유게시판</a></li>
					</ul>

				</div>

				<div class="col-sm-9 col-md-10 main">
					<p class="visible-xs">
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">
							<i class="glyphicon glyphicon-chevron-left"></i>
						</button>
					</p>

					<h2 class="sub-header">자유게시판</h2>

					<br>

					<div class="well bs-component">

						<form class="form-horizontal" action="FreeWrite.app"method="post">
						<input type="hidden" name="pageNum" id="pageNum" value="${pageNum}">
						<input type="hidden" name="userId" value="${loginUser.id}">
							<div class="form-group">
								<label for="id">글쓴이 : </label> ${loginUser.name}
								<hr>
								<!--  <input type="text" class="form-control" id="recipt_title" placeholder="제목을 입력하세요"> -->
							</div>

							<div class="form-group">
								<label for="free_Title">제 목</label> 
								<input type="text" name="free_Title" class="form-control" placeholder="제목을 입력하세요">
							</div>

							<div class="form-group">
								<label for="free_Content">내 용</label>
								<textarea name="free_Content" class="form-control" rows="10" cols="7" placeholder="내용을 입력하세요."></textarea>
							</div>
							<br>

							<div class="form-group">
								<button type="button" class="btn btn-default col-sm-1">취소</button>
								<button type="submit" class="btn btn-primary col-sm-1">글쓰기</button>
							</div>

						</form>
					</div>

				</div>
			</div>

		</div>
		<!--/row-->
	</div>
	<!--/.container-->

	<!-- Footer -->
	<div class="container">
		<hr>
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Get Hyped for Food</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container -->

	<jsp:include page="../common/sign_modal.jsp"/>
</body>

</html>
