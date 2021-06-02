<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/svg" href="./img/header/Logo_Ananas_Header.svg"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="commons/style.css">
    <link rel="stylesheet" type="text/css" href="commons/product-list.css">
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css">
    <title>Order Manager</title>
</head>
<body>
    <div class="container">
    	<div>
    		<h1 class="text-center">Order Manager</h1>
			<div class="text-center ">
				<a href="admin-manager" class="btn btn-primary text-center text-white my-2">Admin Manager</a>
			</div>

    		<table class="table table-bordered border table-hover">
				<caption></caption>
    			<thead class="table-dark">
	    			<tr>
	    				<th scope="col">Ho Ten</th>
	    				<th scope="col">Email</th>
	    				<th scope="col">So Dien Thoai</th>
	    				<th scope="col">Ngay Dat Hang</th>
	    				<th scope="col">Dia Chi</th>
	    				<th scope="col">Username</th>
						<th scope="col" style="width: 250px">Action</th>
	    			</tr>
    			</thead>
    			
	   			<c:forEach var="order" items="${orders }">
	   				<tr>
	    				<td>${order.name }</td>
	    				<td>${order.email }</td>
	    				<td>${order.phone }</td>
	    				<td>${order.orderDate }</td>
	    				<td>${order.address }</td>
	    				<td>${order.account.username }</td>
						<td style="width: 250px">
							<a href="edit-order?id=${order.id}" class="btn btn-info">Edit</a>
							<a href="delete-order?id=${order.id}" class="btn btn-danger">Delete</a>
						</td>
	    			</tr>
	   			</c:forEach>
   			
    		</table>
    	</div>
    </div>
</body>
</html>