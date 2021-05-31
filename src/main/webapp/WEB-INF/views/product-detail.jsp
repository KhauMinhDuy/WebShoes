<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link rel="stylesheet" type="text/css" href="commons/style.css"/>
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css"/>
    <title>Product Detail</title>
</head>
<body>
<%@include file="/WEB-INF/tags/header.jsp" %>
<div class="container">
    <div class="row my-5">
        <div class="col-md-6">
            <img class="w-100" src="commons/images/${product.thumbnail.thumbnail1}" alt="">
        </div>
        <div class="col-md-6 ps-5">
            <form action="shipping-infomation" method="get">
                <input type="hidden" name="id" value="${product.id}">
                <h2 class="my-3">${product.name}</h2>
                <h5 class="my-4">Tình trạng: <strong>New Arriva</strong></h5>
                <h3 class="my-4 " style="color: orange;"><fmt:formatNumber type="number" value="${product.price}"/>
                    VND</h3>
                <div class="row">
                    <div class="col-6">
                        <div class="fw-bold">Size</div>
                        <select style="height: 30px;" class="w-100" name="size">
                            <option value="35">35</option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                        </select>
                    </div>

                    <div class="col-6">
                        <div class="fw-bold">So Luong</div>
                        <input class="border border-dark w-100" style="height: 30px;" type="text" name="total" id="">
                    </div>

                </div>
                <div class="row">
                    <div class="my-5">
                        <input class="text-center w-100 d-block fw-bold border-0" type="submit" value="THANH TOAN"
                               style="background-color: #F15E2C; padding: 30px; color: white; font-size: 30px;">
                        </input>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/tags/footer.jsp" %>
</body>
</html>

