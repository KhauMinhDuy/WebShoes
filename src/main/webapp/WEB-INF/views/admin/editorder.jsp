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
    <link rel="stylesheet" href="commons/bootstrap.min.css">
    <title>Edit Order</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="w-50 text-center mx-auto">

            <h1 class="text-center">Edit Order</h1>
            <form:form action="save-order" method="post" modelAttribute="order">
                <table class="table table-bordered">
                    <caption></caption>
                    <input class="w-100" type="hidden" name="id" value="${order.id}">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">
                            <input class="w-100" type="text" name="name" value="${order.name}">
                        </th>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td>
                            <input class="w-100" type="text" name=email value="${order.email}">
                        </td>
                    </tr>

                    <tr>
                        <td>Address</td>
                        <td>
                            <input class="w-100" type="text" name="address" value="${order.address}">
                        </td>
                    </tr>


                    <tr>
                        <td>Phone</td>
                        <td>
                            <input class="w-100" type="text" name="phone" value="${order.phone}">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input class="btn btn-primary w-100 mx-1" type="submit" value="Edit Order">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <a href="order-manager" class="btn btn-primary w-100">List</a>
                        </td>
                    </tr>

                </table>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>