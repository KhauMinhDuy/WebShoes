<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="commons/bootstrap.min.css">
    <title>New Account</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="w-50 text-center mx-auto">
            <h1 class="text-center">New Account</h1>
            <form:form action="save-account" method="post" modelAttribute="account">
            	<c:if test="${not empty message }">
            		<div class="alert alert-danger">${message }</div>
            	</c:if>
                <table class="table table-bordered">
                    <caption></caption>
                    <tr>
                        <td>Username</td>
                        <th scope="col">
                            <input class="w-100" type="text" name="username" value="${account.username}">
                        </th>
                    </tr>

                    <tr>
                        <td>Password</td>
                        <td>
                            <input class="w-100" type="text" name="password" value="${account.password}">
                        </td>
                    </tr>

                    <tr>
                        <td>Firstname</td>
                        <td>
                            <input class="w-100" type="text" name="firstname" value="${account.firstname}">
                        </td>
                    </tr>

                    <tr>
                        <td>Lastname</td>
                        <td>
                            <input class="w-100" type="text" name="lastname" value="${account.lastname}">
                        </td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td>
                            <input class="w-100" type="text" name="email" value="${account.email}">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input class="btn btn-primary w-100 mx-1" type="submit" value="NEW ACCOUNT">
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
