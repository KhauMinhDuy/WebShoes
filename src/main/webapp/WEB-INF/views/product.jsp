<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css">
    <title>Product</title>
</head>
<body>
<%@ include file="/WEB-INF/tags/header.jsp" %>

<div class="container">
    <img style="width: 100%" class="" alt="" src="commons/images/desktop_productlist.jpg">
    <div class="d-flex justify-content-between flex-wrap">
        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A67008_1-500x500.jpg">
            <h3>Name</h3>
            <h4>Color</h4>
            <a class="" href="">MUA</a>
        </div>



        <c:forEach var="product" items="${products}">


        </c:forEach>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A67008_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A67008_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>

        <div style="width: 30%">
            <img class="img-thumbnail" alt="" src="commons/images/pro_A6T006_1-500x500.jpg">
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/tags/footer.jsp" %>
</body>
</html>