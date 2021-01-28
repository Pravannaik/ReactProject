<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</head>
<body>
	<style type="text/css">
		*{margin: 0; padding: 0; box-sizing: border-box;}

		.card {
		  width: 33%;   
		  text-align: center;
		  margin: 60px;
		  display: inline-block;
		}
		
		.filt {
			margin: 80px;
			text-align: center;
		
		}
		
		.container {
			width: 33%;   
		    text-align: center;
		    margin-left: 450px;
		    margin-bottom: 40px;
		    display: inline-block;
		}
		
		.card-img-top {
		    width: 100% !important;
		    height: 27em !important;
		    object-fit: cover;
		}
		
		
		
	</style>
	<div class="container-fluid position-sticky bg-danger py-4 px-2 t-0"><h1>MOVIE CATALOG</h1>
	</div>
	
	<div class="filt">
		<form action="${pageContext.request.contextPath}/MovieController" method="get">
		    Language:&nbsp;
		    <select name="filtLang">
		      <option value="''">All</option>
		      <option value="English">English</option>
		      <option value="Hindi">Hindi</option>
		      <option value="Marathi">Marathi</option>
		      <option value="Kanada">Kanada</option>
		      <option value="Malayalam">Malayalam</option>
		    </select>
		    Genre:&nbsp;
		    <select name="filtGenre">
		      <option value="''">All</option>
		      <option value="Action">Action</option>
		      <option value="Comedy">Comedy</option>
		      <option value="Thriller">Thriller</option>
		    </select>
		    Sort By:&nbsp;
		    <select name="sort">
		      <option value="''">None</option>
		      <option value="m.movieLen">Length</option>
		      <option value="m.relDate">Release</option>
		    </select>
		    <input type="submit" class="btn btn-danger btn-sm search-btn" name="sub" value="Filter" />
	    </form>
	</div> 
	
	<div class="container-fluid text-center">
		<c:forEach items="${list}" var="movie">
			<div class="card" style="width: 18rem;">
				  <img src=${movie.image} class="card-img-top" alt="Featured">
				  <div class="card-body">
				    <h5 class="card-title">${movie.title}</h5>
				    <p class="card-text">${movie.description}</p>
				    <p class="card-text">Length: ${movie.length}</p>
				    <p class="card-text">Release: ${movie.release}</p>
				  </div>
			</div>
		</c:forEach>
	</div>
	
	<div class="container">
		<c:if test="${currPage != 1}">
			<a href="movie.do?page=${currPage - 1}">Previous</a>
		</c:if>
		
		
		<c:forEach begin="1" end="${numOfPages}" var="i">
			<c:choose>
				<c:when test="${currPage eq i}">
					<td>${i}</td>
				</c:when>
				<c:otherwise>
					<td><a href="movie.do?page=${i}">${i}</a></td>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:if test="${currPage lt numOfPages}">
			<a href="movie.do?page=${currPage + 1}">Next</a>
		</c:if>
	</div>	
	
</body>
</html>