<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/svg"
          href="./img/header/Logo_Ananas_Header.svg"/>
    <link rel="stylesheet" href="commons/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
          crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="commons/style.css">
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css">
    <title>Shipping Infomation</title>
</head>
<body>
<%@include file="/WEB-INF/tags/header.jsp" %>

<div class="container">
    <div class="row my-5">
        <form class="row my-3" action="order-success">
            <div class="col-6">
                <div class="display-6 " style="background-color: #F1F1F1;">
                    Thong tin giao hang
                </div>

                <input type="hidden" name="id" value="${product.id}">
				
                <div class="my-4">
                    <input required="required" class="" type="text" name="name"  placeholder="Ho Ten"
                           style="padding: 5px 0 5px 10px; border: 1px solid #CCCCCC;">
                </div>

                <div class="my-4">
                    <input required="required" class="" type="text" name="phone"
                           placeholder="So Dien THoai"
                           style="padding: 5px 0 5px 10px; border: 1px solid #CCCCCC;">
                </div>
                <div class="my-4">
                    <input required="required" class="" type="text" name="email"  placeholder="Email"
                           style="padding: 5px 0 5px 10px; border: 1px solid #CCCCCC;">
                </div>
                <div class="my-4">
                    <input required="required" class="" type="text" name="address"
                           placeholder="Dia Chi"
                           style="padding: 5px 0 5px 10px; border: 1px solid #CCCCCC;">
                </div>
            </div>
            <div class="col-6">
                <div class="" style="background-color: #F1F1F1;">
                    <div class="fw-bold ps-4 pt-2" style="font-size: 30px;">
                        Don Hang
                    </div>
                    <div class="mx-3" style="border-bottom: 2px solid black;"></div>
                    <div class="ps-4 my-2" style="color: #808080; font-size: 20px;">${product.name }</div>
                    <div class="ps-4 my-2" style="color: #808080; font-size: 20px;">${product.color }</div>
                    <div class="row">
                        <div class="col-6">
                            <div class="ps-4 my-2" style="color: #808080; font-size: 20px;">Size:
                                ${size }</div>
                        </div>
                        <div class="col-6">
                            <div class="ps-4 my-2" style="color: #808080; font-size: 20px;">x${total }</div>
                        </div>
                        <div class="col-6">
                            <div class="ps-4 my-2" style="color: #F15E2C; font-size: 20px; font-weight: bold;">
                                <fmt:formatNumber type="number" value="${price }"/> VND
                            </div>
                        </div>
                    </div>
                    <div>
                        <input class="text-center d-block fw-bold border-0"
                               style="background-color: #F15E2C; font-size: 30px; color: white; padding: 30px;
											margin: 0 20px; width: 95%"
                               type="submit"
                               value="DAT HANG">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<%@include file="/WEB-INF/tags/footer.jsp" %>
</body>
</html>