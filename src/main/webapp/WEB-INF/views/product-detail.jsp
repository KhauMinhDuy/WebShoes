
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="${pageContext.request.contextPath}/">
    <link rel="shortcut icon" type="image/svg" href="commons/img/header/Logo_Ananas_Header.svg"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="commons/style.css" />
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css" />
    <title>Product Detail</title>
</head>
<body>
<%@include file="/WEB-INF/tags/header.jsp" %>
    <div class="container">
    <div class="d-flex">
	    <div class="w-50">
	    	<img class="w-100" src="commons/images/${product.thumbnail.thumbnail1}" alt="">
        </div>
        <div class="w-50">
            <h3>${product.name}</h3>
            <h4>${product.price}</h4>

        </div>
    </div>
        
    </div>

<%@include file="/WEB-INF/tags/footer.jsp"%>
</body>
</html>

