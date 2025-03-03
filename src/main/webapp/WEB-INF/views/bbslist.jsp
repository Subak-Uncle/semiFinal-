<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="mul.cam.food.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="./css/bbslist.css" >
  <script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

<style type="text/css">

</style>

</head>
<%
	MemberDto login = (MemberDto)session.getAttribute("login");
	List<BbsDto> list = (List<BbsDto>)request.getAttribute("bbslist");
	String uploadFilePath = (String)request.getAttribute("uploadFilePath");
	int pageBbs = (Integer)request.getAttribute("pageBbs");
	int pageNumber = (Integer)request.getAttribute("pageNumber");
	
%> 


<body>
       
       	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-color: red !important;">
		<!-- Container wrapper -->
		<div class="container-fluid" style="height: 100px; font-weight: 700;">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="mainhome.do"> <img
					src="resources/images/logo2.png" height="100" alt="Logo"
					loading="lazy" />
				</a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">카테고리</a></li>
					<li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="login.do">회원가입</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center">
				<!-- Icon -->
				<a class="text-reset me-3" href="#"> <i
					class="fas fa-shopping-cart"></i>
				</a>

				<!-- Notifications -->
				<div class="dropdown">
					<a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
						class="fas fa-bell"></i> <span
						class="badge rounded-pill badge-notification bg-danger">1</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">Some news</a></li>
						<li><a class="dropdown-item" href="#">Another news</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a>
						</li>
					</ul>
				</div>
				<!-- Avatar -->
				<div class="dropdown">
					<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
						href="#" id="navbarDropdownMenuAvatar" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <img
						src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
						class="rounded-circle" height="25"
						alt="Black and White Portrait of a Man" loading="lazy" />
					</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuAvatar">
						<li><a class="dropdown-item" href="#">My profile</a></li>
						<li><a class="dropdown-item" href="#">Settings</a></li>
						<li><a class="dropdown-item" href="#">Logout</a></li>
					</ul>
				</div>
			</div>
			<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
       
    <div class="container main">
	   	<div class="category_tag_div">
	   	    <div class="category_tag text-center">			
			#따뜻한
			</div>
			<div class="category_tag text-center">
			#든든한
			</div>
			<div class="category_tag text-center">
			#맛있는
			</div>
	   	</div>

      <form class="d-flex" action="search.do" method="post">
      	<select class="custom-select" id="choice" name="choice">
					<option selected>검색</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="writer">작성자</option>
		</select>
        <input id="search" name="search" class="form-control me-2 bbs-search-form" type="search" placeholder="따뜻한 한끼를 검색해 보세요" aria-label="Search">
        <button class="btn btn-outline-success" type="submit" >search</button>
      </form>
      
      <div class="category category-main">
      	<table>
			<tbody>				
				<tr>
					<th>종류</th>
					<td>
					
					<a href="">밥</a>
					
					<a href="">반찬</a>
					
					<a href="">국물</a>
					
					<a href="">면</a>
					
					<a href="">디저트</a>
					
					<a href="">분식</a>
					
					<a href="">샐러드</a>
					
					<a href="">음료</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>재료</th>
					<td>
					
					<a href="">쇠고기</a>
					
					<a href="">돼지고기</a>
					
					<a href="">닭고기</a>
					
					<a href="">채소</a>
					
					<a href="">해물</a>
					
					<a href="">계란</a>
					
					<a href="">유제품</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>방법</th>
					<td>
					
					<a href="">구이</a>
					
					<a href="">찜</a>
					
					<a href="">국탕찌개</a>
					
					<a href="">볶음</a>
					
					<a href="">조림</a>
					
					<a href="">튀김</a>
					
					<a href="">무침·비빔</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>테마</th>
					<td>
					
					<a href="">스피드</a>
					
					<a href="">브런치</a>
					
					<a href="">집밥</a>
					
					<a href="">야식</a>
					
					<a href="">간식</a>
					
					<a href="">도시락</a>
					
					<a href="">1인분</a>
					
					<a href="">해장</a>
					
					<a href="">채식</a>

					<a href="">다이어트</a>
					
					</td>
				</tr>
				
				<tr>
					<th>기념일</th>
					<td>
					
					<a href="">명절</a>
					
					<a href="">생일</a>
					
					<a href="">카레데이</a>
			
					<a href="">크리스마스</a>
					
					</td>
				</tr>			
				
			</tbody>
		</table>
      </div>
<%--       
      <div class="bbs-main">
      <!-- 게시판 소개글? -->
      <h2 class="text-center" id="bbsname">
      	전체 게시판
      </h2>
      
      <!-- 게시판 메인 -->
      	<table class="bbs-table" id="bbs-table">
		      	
		<%
		if(list == null || list.size() == 0){
		%>
		<tbody>
			<tr>
				<td colspan="4">작성된 글이 없습니다</td>
			</tr>
		</tbody>

	    <%
		}else{
		%>
		
		<tbody>
      			<tr>
		<%
		
			for(int i = 0;i < list.size(); i++)
			{
				BbsDto dto = list.get(i);
		%>
			<td class="card bbs-recipt " onclick="location.href = 'bbsdetail.do?seq=<%=dto.getSeq() %>'">
				<div class="overflowHidden bbs-thumbnali">
					<%=dto.getThumbnail()%>
				</div>	
				<div class="card-body">					
						<p id="recipt-title"><%=dto.getTitle() %></p>
						<div class="hash-tag" id="recipt-hashtag">
						 <span><%=dto.getTag() %></span>
						</div>
						<input hidden id="seq" name="seq" value="<%=dto.getSeq() %>"/>	
				</div>					
			</td>
			
		<%
			}
		}
		%>
		</tr>
		</tbody>
  
      	</table>  
      	
      	 <div class="container page-bar">
			<nav aria-label="Page navigation">
			    <ul class="pagination" id="pagination" style="justify-content:center"></ul>
			</nav>
		 </div>	
  	   </div> --%>
      <div class="bbs-main">
      <!-- 게시판 소개글? -->
      <h2 class="text-center" id="bbsname">
      	전체 게시판
      </h2>
      
      <!-- 게시판 메인 -->
      	<table class="bbs-table" id="bbs-table">
		      	
		<%
		if(list == null || list.size() == 0){
		%>
		<tbody>
			<tr>
				<td colspan="4">작성된 글이 없습니다</td>
			</tr>
		</tbody>

	    <%
		}else{
		%>
		
		<tbody>
      			<tr>
		<%
		
			for(int i = 0;i < list.size(); i++)
			{
				BbsDto dto = list.get(i);
		%>
			<td class="card bbs-recipt " onclick="location.href = 'bbsdetail.do?seq=<%=dto.getSeq() %>'">
				<div class="overflowHidden bbs-thumbnali">
					<%=dto.getThumbnail()%>
				</div>	
				<div class="card-body">					
						<p id="recipt-title"><%=dto.getTitle() %></p>
						<div class="hash-tag" id="recipt-hashtag">
						 <span><%=dto.getTag() %></span>
						</div>
						<input hidden id="seq" name="seq" value="<%=dto.getSeq() %>"/>	
				</div>					
			</td>
			
		<%
			}
		}
		%>
		</tr>
		</tbody>
  
      	</table>  
      	
      	 <div class="container page-bar">
			<nav aria-label="Page navigation">
			    <ul class="pagination" id="pagination" style="justify-content:center"></ul>
			</nav>
		 </div>	
  	   </div>
 
      
	</div>
	
	<button onclick="location.href='bbswrite.do'">글쓰기</button>

	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
			<!-- Section: Social media -->
			<section class="mb-4">
				<!-- Facebook -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-facebook-f"> <img
						src="resources/images/facebook.png">
				</i></a>

				<!-- Twitter -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-twitter"></i></a>

				<!-- Google -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-google"></i></a>
			</section>
			<!-- Section: Social media -->

			<!-- Section: Text -->
			<section class="mb-4">
				<p>3조 프로젝트</p>
			</section>
			<!-- Section: Text -->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			Copyright2023.Multicampus_3조</div>
		<!-- Copyright -->
	</footer>

<script>

$(document).ready(
		$('#pagination').twbsPagination({
			startPage: <%=pageNumber+1 %>,
		    totalPages: <%=pageBbs%>,
		    visiblePages: 10,
		    first: '<span srid-hidden="true">«</span>', 
		    prev:"이전",
		    next:"다음",
		    last: '<span srid-hidden="true">»</span>',
		    initiateStartPageClick: false,
		    onPageClick: function (event, page) {
		    	let choice = document.getElementById('choice').value;
		    	let search = document.getElementById('search').value;
		    	location.href = "bbslist.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1) ;
		    }
		})
)


function bbsdetail() {
	let seq = document.getElementById('seq').value;

	location.href = "bbsdetail.do?seq="+seq;
}

</script>


</body>
</html>



