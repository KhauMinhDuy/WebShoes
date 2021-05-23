
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="commons/bootstrap.min.css">
    <title>Edit Account</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="w-50 text-center mx-auto">

            <h1 class="text-center">Edit Account</h1>
            <form:form action="save-account" method="post" modelAttribute="account">
                <table class="table table-bordered">
                    <tr>
                        <td>Username</td>
                        <td>
                            <input class="w-100" type="text" name="username" value="${username.username}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input class="w-100" type="text" name="password" value="${username.password}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>Firstname</td>
                        <td>
                            <input class="w-100" type="text" name="firstname" value="${username.firstname}">
                        </td>
                    </tr>
                    <tr>
                        <td>Lastname</td>
                        <td>
                            <input class="w-100" type="text" name="lastname" value="${username.lastname}">
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <input class="w-100" type="text" name="email" value="${username.email}">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-primary w-100 mx-1" type="submit" value="SAVE">
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <a href="account-manager" class="btn btn-primary w-100">List</a>
                        </td>

                    </tr>

                </table>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
