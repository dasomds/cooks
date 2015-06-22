<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dash Board-free</title>

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
						<li><a href="#">나만 아는 레시피</a></li>
						<li><a href="#">공지사항</a></li>
					</ul>

				</div>
				<!--/span-->

				<div class="col-sm-9 col-md-10 main">

					<!--toggle sidebar button-->
					<p class="visible-xs">
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">
							<i class="glyphicon glyphicon-chevron-left"></i>
						</button>
					</p>

					<h2 class="sub-header">자유게시판</h2>
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th style="width: 5%;">번호</th>
									<th>제 목</th>
									<th style="width: 10%;">작성자</th>
									<th style="width: 20%;">날짜</th>
									<th style="width: 10%;">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="freeVO" items="${freeList}">
									<tr height="30">
										<td align="center">${freeVO.free_Num}</td>
										<td align="left" ><a href="/cooks/FreeContent.app?free_Num=${freeVO.free_Num}&pageNum=${pageNum}">
															${freeVO.free_Title}</a></td>
										<td align="center">${loginUser.name}</td>
										<td align="center">${freeVO.free_Date}"</td>
										<td align="center">${freeVO.free_Hit}</td>
									</tr>
								</c:forEach>
 								
							</tbody>
						</table>
						
						<!-- Button trigger modal -->
<!-- 						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#writeForm" data-backdrop="static">글쓰기</button> -->
						<input type="button" value="글쓰기" onclick="document.location.href='/cooks/FreeWriteForm.app'">
<!-- 						<a href="/cooks/FreeWriteForm.app">글쓰기</a> -->
						
					</div>

				</div>
				<!--/row-->
			</div>

		</div> <!-- row -->
	</div> <!-- /container -->


	<div class="container">

        <hr>

        <!-- Footer -->
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
