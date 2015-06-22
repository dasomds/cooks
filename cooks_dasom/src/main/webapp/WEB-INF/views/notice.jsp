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

    <title>Dash Board-notice</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="community/css/shop-homepage.css" rel="stylesheet">
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="common/js/common.js"></script>
    <script src="community/js/community.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
</head>


<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="#">Cook's</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<li><a><span class="glyphicon glyphicon-log-in" data-toggle="modal" data-target="#signIn"> 로그인</span></a></li>
        			<li><a><span class="glyphicon glyphicon-user"  data-toggle="modal" data-target="#signUp"> 회원가입</span></a></li>
        			<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> 장바구니</a></li>
      			</ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->

<!--     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"> -->
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
<!--                 <a class="navbar-brand" href="#">Start Bootstrap</a> -->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">1인메뉴</a>
                    </li>
                    <li>
                        <a href="#">맛집</a>
                    </li>
                    <li>
                        <a href="#">커뮤니티</a>
                    </li>
                    <li>
                        <a href="#">공지사항</a>
                    </li>
                    <li>
                        <a href="#">음식후기</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
<!--     </nav> -->
    </nav>

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

					<h2 class="sub-header">공지사항</h2>
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th style="width: 10%;">번호</th>
									<th>제 목</th>
									<th style="width: 15%;">작성자</th>
									<th style="width: 15%;">날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="noticeVo" items="${noticelist}">
									<tr>
										<td><c:out value="${article.no_num}"/></td>
										<td>${noticeVo.id}</td>
										<td>${noticeVo.no_date}</td>
										<td>${noticeVo.no_hit}</td>
									</tr>
								</c:forEach>
<!-- 								<tr> -->
<!-- 									<td>1,001</td> -->
<!-- 									<td>공지1 입니다. !</td> -->
<!-- 									<td>송민준</td> -->
<!-- 									<td>2015-06-13</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,002</td> -->
<!-- 									<td>amet</td> -->
<!-- 									<td>consectetur</td> -->
<!-- 									<td>adipiscing</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,003</td> -->
<!-- 									<td>Integer</td> -->
<!-- 									<td>nec</td> -->
<!-- 									<td>odio</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,003</td> -->
<!-- 									<td>libero</td> -->
<!-- 									<td>Sed</td> -->
<!-- 									<td>cursus</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,004</td> -->
<!-- 									<td>dapibus</td> -->
<!-- 									<td>diam</td> -->
<!-- 									<td>Sed</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,005</td> -->
<!-- 									<td>Nulla</td> -->
<!-- 									<td>quis</td> -->
<!-- 									<td>sem</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,006</td> -->
<!-- 									<td>nibh</td> -->
<!-- 									<td>elementum</td> -->
<!-- 									<td>imperdiet</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,007</td> -->
<!-- 									<td>sagittis</td> -->
<!-- 									<td>ipsum</td> -->
<!-- 									<td>Praesent</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,008</td> -->
<!-- 									<td>Fusce</td> -->
<!-- 									<td>nec</td> -->
<!-- 									<td>tellus</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,009</td> -->
<!-- 									<td>augue</td> -->
<!-- 									<td>semper</td> -->
<!-- 									<td>porta</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,010</td> -->
<!-- 									<td>massa</td> -->
<!-- 									<td>Vestibulum</td> -->
<!-- 									<td>lacinia</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,011</td> -->
<!-- 									<td>eget</td> -->
<!-- 									<td>nulla</td> -->
<!-- 									<td>Class</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,012</td> -->
<!-- 									<td>taciti</td> -->
<!-- 									<td>sociosqu</td> -->
<!-- 									<td>ad</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,013</td> -->
<!-- 									<td>torquent</td> -->
<!-- 									<td>per</td> -->
<!-- 									<td>conubia</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,014</td> -->
<!-- 									<td>per</td> -->
<!-- 									<td>inceptos</td> -->
<!-- 									<td>himenaeos</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>1,015</td> -->
<!-- 									<td>sodales</td> -->
<!-- 									<td>ligula</td> -->
<!-- 									<td>in</td> -->
<!-- 								</tr> -->
							</tbody>
						</table>
						
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#writeForm" data-backdrop="static">글쓰기</button>
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
    
  	<div id="sign_Modal"></div>
  	<div id="writeForm_Modal"></div>  
    
</body>
</html>
