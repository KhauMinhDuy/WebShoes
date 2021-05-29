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
	<link rel="stylesheet" type="text/css" href='<c:out value="commons/bootstrap.min.css" />'>
    <title>Account Manager</title>
</head>
<body>
    <div class="container">
    	<div>
    		<h1 class="text-center">Account Manager</h1>
			<div class="text-center mb-2">
    			<a href="new-account" class="btn btn-primary">New Account</a>
			</div>
    		<table class="table table-bordered border table-hover">
				<caption></caption>
    			<thead class="table-dark">
	    			<tr>
	    				<th scope="col">Username</th>
	    				<th scope="col">Password</th>
	    				<th scope="col">FirstName</th>
	    				<th scope="col">LastName</th>
	    				<th scope="col">Email</th>
						<th scope="col" style="width: 250px">Action</th>
	    			</tr>
    			</thead>
    			
	   			<c:forEach var="account" items="${accounts }">
	   				<tr>
	    				<td>${account.username }</td>
	    				<td>${account.password }</td>
	    				<td>${account.firstname }</td>
	    				<td>${account.lastname }</td>
	    				<td>${account.email }</td>
						<td style="width: 250px">
							<a href="edit-account?user=${account.username}" class="btn btn-info">Edit</a>
							<a href="delete-account?user=${account.username}" class="btn btn-danger">Delete</a>
						</td>
	    			</tr>
	   			</c:forEach>
   			
    		</table>
    	</div>
    </div>
</body>
</html>