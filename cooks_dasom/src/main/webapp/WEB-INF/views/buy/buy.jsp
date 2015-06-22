<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>buy</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="buy/css/buy.css" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="common/js/common.js"></script>

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
            <div class="col-md-6">
                <img class="img-responsive" src="buy/images/chopsteak.jpg" alt="">
            </div>
            <div class="menu-info">
                <h1>찹스테이크</h1>
                <table class="menuinfo-text">
                	<tr>
                		<td>판매가</td>
                		<td>8,000원</td>
                	</tr>
                	<tr>
                		<td>마일리지</td>
                		<td>400(5%)</td>
                	</tr>
                	<tr>
                		<td>주재료</td>
                		<td>부채살(150g)</td>
                	</tr>
                	<tr>
                		<td>구매수량</td>
                		<td> 
                			<select class="form-control qty-select-form">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                                <option>9</option>
                               </select>
                        </td>
                	</tr>
                </table>
                <a class="btn btn-primary btn-md bt" href="#">즉시구매</a>
                <a class="btn btn-primary btn-md bt" href="#">장바구니</a>
            </div>
        </div>
        <div class="row">
                    <div class="col-md-12">
                        <div class="themline">
                        	<p style="font-size:20px; color:#d85c9a; margin-left:520px;">Menu</p>
                        </div>
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="buy/images/dessert.jpg" alt="...">
						</div>
						<div class="item">
							<img src="buy/images/steak.jpg" alt="...">
						</div>
						<div class="item">
							<img src="buy/images/salad.jpg" alt="...">
						</div>
						
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
					
				</div>

				<!-- 				<div class="recipe-img"> -->
<!--                     		<img class="img-responsive" src="http://placehold.it/900x350" alt="">     -->
<!--                     	</div> -->
<!--                     </div> -->
         </div>
         <div class="row">
                    <div class="col-md-12">
                        <div class="themline">
                        	<p style="font-size:20px; color:#d85c9a; margin-left:520px;">Recipe</p>
                        </div>
                        <div class="recipe">
                        	<table class="recipe-tb">
                        		<tr>
                        			<td>Menu</td>
                        			<td>찹스테이크</td>
                        		</tr>
                        		<tr>
                        			<td>재료</td>
                        			<td>쇠고기(안심) 400g</td>
                        			<td>피망 1개</td>
                        			<td>양파 1개</td>
                        		</tr>
                        		<tr>
                        			<td>소스</td>
                        			<td>토마토 케첩 3큰술</td>
                        			<td>적포도주 3큰술</td>
                        			<td>굴소스 2큰술</td>
                        			<td>설탕 1작은술</td>
                        		</tr>
                        		<tr>
                        			<td>1</td>
                        		</tr>
                        		<tr>
                        			<td>2</td>
                        		</tr>
                        		<tr>
                        			<td>3</td>
                        		</tr>
                        		<tr>
                        			<td>4</td>
                        		</tr>
                        		<tr>
                        			<td>5</td>
                        		</tr>
                        		<tr>
                        			<td>6</td>
                        		</tr>
                        	</table>
                        </div>
                    </div>
         </div>
		 <div class="row">			
		 	<div class="col-md-12">
            	<div class="themline">
            		<p style="font-size:20px; color:#d85c9a; margin-left:522px;">Detail</p>
                </div>
                <div class="product-list-text">
                	<p style="font-size:20px;">제품 상세정보</p>
                </div>
            </div>
            
            <div class="col-md-4">
				<table class="product">
					<tr>
						<td>유통기한</td>
					</tr>
					<tr>
						<td>원재료명 및 함량</td>
					</tr>
					<tr>
						<td>섭취방법</td>
					</tr>
					<tr>
						<td>내용량</td>
					</tr>
					<tr>
						<td>보관방법/취급방법</td>
					</tr>
					<tr>
						<td>포장재질</td>
					</tr>
				</table>
			</div>
			<div class="col-md-8">
				<table class="product-detail">
					<tr>
						<td>제조일로부터 3일</td>
					</tr>
					<tr>
						<td>소고기 부채살(국내산), 피망, 양파, 버터, 밀가루, 마늘, 돈가스소스, 케찹, 설탕</td>
					</tr>
					<tr>
						<td>조리/가열 후 섭취</td>
					</tr>
					<tr>
						<td>500g</td>
					</tr>
					<tr>
						<td>냉장보관</td>
					</tr>
					<tr>
						<td>PE</td>
					</tr>
				</table>
			</div>
			<div class="col-md-12">
				<div class="origin-text">
					<p style="font-size:20px;">원산지 안내</p>
				
				<table class="origincountry">
					<tr>
						<td>소고기</td> 
						<td>국내산</td>
					</tr>
					<tr>
						<td>피망</td> 
						<td>국내산</td>
					</tr>
					<tr>
						<td>양파</td> 
						<td>국내산</td>
					</tr>
					<tr>
						<td>버섯</td> 
						<td>국내산</td>
					</tr>
				</table>
				</div>
			</div>
         </div>
         
         <div class="row">         
         	<div class="col-md-12">
         		<div class="themline">
         			<p style="font-size:20px; color:#d85c9a; margin-left:520px;">Review</p>
                </div>
            </div>
		</div>
		<div class="row"> 
			<div class="col-md-12">
        		<div class="themline">
        			<p style="font-size:20px; color:#d85c9a; margin-left:520px;">QnA</p>
            	</div>
            </div>
         </div>
 	</div>
     

<!--                     <div class="col-md-5"> -->
<!--                         <div class="thumbnail"> -->
<!--                             <img src="img/kimchizzim.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$64.99</h4> -->
<!--                                 <h4><a href="#">Second Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">12 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-sm-4 col-lg-4 col-md-4"> -->
<!--                         <div class="thumbnail"> -->
<!--                             <img src="img/bulgogi.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$94.99</h4> -->
<!--                                 <h4><a href="#">Fifth Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">18 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-sm-4 col-lg-4 col-md-4"> -->
<!--                         <div class="thumbnail"> -->
<!--                              <img src="img/gangjung.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$94.99</h4> -->
<!--                                 <h4><a href="#">Fifth Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">18 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-sm-4 col-lg-4 col-md-4"> -->
<!--                         <div class="thumbnail"> -->
<!--                              <img src="img/gungjoong.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$94.99</h4> -->
<!--                                 <h4><a href="#">Fifth Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">18 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-5"> -->
<!--                         <div class="thumbnail"> -->
<!--                             <img src="img/zzimdak.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$74.99</h4> -->
<!--                                 <h4><a href="#">Third Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">31 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-7"> -->
<!--                         <div class="thumbnail"> -->
<!--                             <img src="img/zzuggumi.jpg" alt=""> -->
<!--                             <div class="caption"> -->
<!--                                 <h4 class="pull-right">$84.99</h4> -->
<!--                                 <h4><a href="#">Fourth Product</a> -->
<!--                                 </h4> -->
<!--                             </div> -->
<!--                             <div class="ratings"> -->
<!--                                 <p class="pull-right">6 reviews</p> -->
<!--                                 <p> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                     <span class="glyphicon glyphicon-star-empty"></span> -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                 </div> -->

            </div>

        

<!--     </div> -->
    <!-- /.container -->

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

</body>

</html>
    