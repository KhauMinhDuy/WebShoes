<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css">
    <title>Register</title>
</head>
<body>
<%@include file="/WEB-INF/tags/header.jsp" %>
<div class="container">
    <div class="mx-auto w-50">
        <h1 class="text-center mt-2">Register</h1>
        <c:if test="${message != null }">
            <h1 class="alert alert-primary">${message }</h1>
        </c:if>
        <form:form action="saveAccount" modelAttribute="account" method="post">
            <table class="table">
                <caption></caption>
                <tr>
                    <td>Username</td>
                    <td><input class="border border-dark w-100" type="text" name="username"/></td>
                    <td><form:errors path="username" cssClass="alert alert-danger" element="p"/></td>
                </tr>
                
                <tr>
                    <td>Firstname</td>
                    <td><input class="border border-dark w-100" type="text" name="firstname"/></td>
                    <td><form:errors path="firstname" cssClass="alert alert-danger" element="p"/></td>
                </tr>
                
                <tr>
                    <td>LastName</td>
                    <td><input class="border border-dark w-100" type="text" name="lastname"/></td>
                    <td><form:errors path="lastname" cssClass="alert alert-danger" element="p"/></td>
                </tr>
                
                <tr>
                    <td>Email</td>
                    <td><input class="border border-dark w-100" type="text" name="email"/></td>
                    <td><form:errors path="email" cssClass="alert alert-danger" element="p"/></td>
                </tr>
                
                <tr>
                    <td>Password</td>
                    <td><input class="border border-dark w-100" type="password" name="password"/></td>
                    <td><form:errors path="password" cssClass="alert alert-danger" element="p"/></td>
                </tr>
                
                <tr>
                    <td>Confirm Password</td>
                    <td><input class="w-100" type="password" name="matchingpassword"/></td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" class="btn btn-lg btn-primary w-100" role="button" value="Registry"/>
                    </td>

                </tr>

                <tr>
                    <td colspan="2">
                        <a class="btn btn-lg btn-primary w-100 text-white" href="login">Login</a>
                    </td>
                </tr>

            </table>

        </form:form>
    </div>
</div>
<%@include file="/WEB-INF/tags/footer.jsp" %>

</body>
</html>