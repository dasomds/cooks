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

    <title>Dash Board-자유게시판_글읽기</title>

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
    <script src="common/js/common.js"></script>
    <script src="community/js/community.js"></script>
    
<style>
#inlineFooter, #recipe_like_form {
	display: inline-block;
}
</style>

<script>
$(document).ready( function() {
	getComment(1);
// 	getLike();
	addHit();
	
	commentPageNum = parseInt($("#commentPageNum").val());	//value=1
	
	//코멘트 '추가'버튼 눌린 경우
	$("#comment_write").click( function() {
		$.ajax({
			type : "POST",
			url : "FreeCommentWrite.app",
			async : true,
			dataType : "json",
			data : {
				free_Num : $('#free_Num').val(),
				fcomment_Content : $('#fcomment_Content').val(),
			},
			success : function(data) {
				
				var html = '';
				
				$.each(data.freeCommentVO, function(entryIndex, entry) {
					var formatted_date = new Date(entry.fcomment_Date);
					
					html += '<div class="row">';
					html += '<div class="col-md-2 col-sm-3 text-center">' + entry.id + '</div>';
					html += '<div class="col-md-10 col-sm-9">';
					html += '<div class="panel" style="background: #F5F5F5">' + entry.fcomment_Content;
					html += '<div class="row">';
					html += '<div class="col-xs-9">';
					html += '<small class="text-muted">' + formatted_date.toLocaleString() + '</small>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';
					html += '</div>';	
					
				});
				$('#show_comment').html(html);
				$('#fcomment_Content').val("");	//댓글 입력값 초기화				
			},
			error : function(xhr) {
				
				alert("error html = " + xhr.statusText);
			}	
		});
	});
	
}); 

//코멘트 가져오기
function getComment(commentPageNum)  {
	event.preventDefault();
	
	if(commentPageNum==1) {
		$('#commentPageNum').val(1);
	}
	
	commentPageNum = parseInt(commentPageNum);
	
	$.ajax({
		type : "POST",
		url : "FreeCommentRead.app",
		async : true,
		dataType : "json",
		data : {
			free_Num : $('#free_Num').val(),
			endRow : commentPageNum*20
		},
		success : function(data) {
			var html = '';
			
			$.each(data.freeCommentVO, function(entryIndex, entry) {
				var formatted_date = new Date(entry.fcomment_Date);
				
				html += '<div class="row">';
				html += '<div class="col-md-2 col-sm-3 text-center">' + entry.id + '</div>';
				html += '<div class="col-md-10 col-sm-9">';
				html += '<div class="panel" style="background: #F5F5F5">' + entry.fcomment_Content;
				html += '<div class="row">';
				html += '<div class="col-xs-9">';
				html += '<small class="text-muted">' +formatted_date.toLocaleString() + '</small>';
				html += '</div>';
				html += '</div>';
				html += '</div>';
				html += '</div>';
				html += '</div>';	
				
			});
			$('#show_comment').html(html);				
			
		},
		error : function(xhr) {
			
			alert("error html = " + xhr.statusText);
		}	
	});
}

//댓글달기 폼으로 포커스 이동
function getFocus() {
	document.getElementById("fcomment_Content").focus();
}

//좋아요
// function clickLike() {
// 	$('#like').hide() ;
// 	$('#dislike').show() ;
	
// 	$.ajax({
// 		type : "POST",
// 		url : "recipeLike.app",
// 		async : true,
// 		dataType : "json",
// 		data : {
// 			recipe_num : $('#recipe_num').val(),			
// 		},
// 		success : function(data) {
// 			var recipe_like = data.recipe_like ;
			
// 			$('#recipe_like_form').text(recipe_like);			
// 		}		
// 	});
// }

//좋아요 취소
// function clickDislike() {
// 	$('#like').show() ;
// 	$('#dislike').hide() ;
	
// 	$.ajax({
// 		type : "POST",
// 		url : "recipeDislike.app",
// 		async : true,
// 		dataType : "json",
// 		data : {
// 			recipe_num : $('#recipe_num').val(),			
// 		},
// 		success : function(data) {
// 			var recipe_like = data.recipe_like ;
			
// 			$('#recipe_like_form').text(recipe_like);			
// 		}		
// 	});
// }

//좋아요 수 가져오기
// function getLike() {
// 	$.ajax({
// 		type : "POST",
// 		url : "getRecipeLike.app",
// 		async : true,
// 		dataType : "json",
// 		data : {
// 			recipe_num : $('#recipe_num').val(),			
// 		},
// 		success : function(data) {		
// 			var recipe_like = data.recipe_like ;
			
// 			$('#recipe_like_form').text(recipe_like);
// 		}
// 	});
// }

//조회수 추가
function addHit() {
	$.ajax({
		type : "POST",
		url : "FreeHit.app",
		async : true,
		dataType : "json",
		data : {
			free_Num : $('#free_Num').val(),			
		},
		success : {}
	
	});
	
}

</script>
    
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
				
				<input type="hidden" name="pageNum" value="${pageNum}">
				<input type="hidden" id="free_Num" value="${freeVO.free_Num}">

				<div class="col-sm-9 col-md-10 main">
					<p class="visible-xs">
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">
							<i class="glyphicon glyphicon-chevron-left"></i>
						</button>
					</p>

					<h2 class="sub-header">자유게시판</h2>

					<br>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>${freeVO.free_Title}</h4>
							<label for="id">글쓴이 : </label> ${loginUser.name} <br>
						</div>
						<div class="panel-body">${freeVO.free_Content}</div>
						<div class="panel-footer">
							<div id="inlineFooter">
<%-- 								<a onclick="clickLike(${freeVO.free_like})" id="like">좋아요</a> --%>
<!-- 								<a onclick="clickDislike()" id="dislike" hidden="hidden">좋아요 취소</a> .  -->
								<a onclick="getFocus()">댓글달기</a> . 
<%-- 								<a><span class="glyphicon glyphicon-thumbs-up"></span>${recipeVO.recipe_like}</a> --%>

							</div>

							<!-- 게시글 수정/게시글 삭제 버튼을 좋아요/댓글달기 와 같은줄에 오게하기위해 id값 주고 style에서 inline-block 해줌 -->
							<div id="inlineFooter" style="float: right">
								<a
									href="FreeUpdateForm.app?free_Num=${freeVO.free_Num}&pageNum=${pageNum}">게시글
									수정</a> . <a
									href="FreeDelete.app?free_Num=${freeVO.free_Num}&pageNum=${pageNum}">게시글
									삭제</a> . <a href="FreeList.app?pageNum=${pageNum}">목록으로</a>
							</div>
						</div>
					</div>
					
					
					<div class="well row" id="commentForm">
							<input type="hidden" id="commentPageNum" value="1">
						<!-- 						기존에 있는 코멘트 읽어오기 -->
						<div id="show_comment"></div>
						
<!-- 						댓글이 0개인 경우 -->
<%-- 						<c:if test="${freeCommentCount == 0 }"> --%>
<!-- 							<h4>등록된 댓글이 없습니다</h4> -->
<%-- 						</c:if> --%>

						
						<form class="form-horizontal" role="form">
							<div class="form-group" style="padding: 14px;">
<!-- 						댓글 입력 창 -->
								<textarea class="form-control" id="fcomment_Content" name="fcomment_Content"
									placeholder="댓글을 입력하세요!"></textarea>
							</div>
							<c:if test="${id==null}">
								<button class="btn btn-primary pull-right" type="button" id="comment_write" disabled="disabled">추가</button>
							</c:if>
							<c:if test="${id!=null}">
								<button class="btn btn-primary pull-right" type="button" id="comment_write">추가</button>
							</c:if>
							<ul class="list-inline">
								<li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
								<li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
							</ul>
						</form>
					</div>
				</div>

			</div>

		</div> <!--/row-->
	</div> <!--/.container-->

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
