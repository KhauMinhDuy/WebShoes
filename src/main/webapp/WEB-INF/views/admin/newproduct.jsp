<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>New Product</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="w-50 text-center mx-auto">

            <h1 class="text-center">New Account</h1>
            <form:form action="save-product" method="post" modelAttribute="product" enctype="multipart/form-data">
                <table class="table table-bordered">
                    <caption></caption>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">
                            <input class="w-100" type="text" name="name" >
                        </th>
                    </tr>

                    <tr>
                        <td>Color</td>
                        <td>
                            <input class="w-100" type="text" name="color" >
                        </td>
                    </tr>

                    <tr>
                        <td>Price</td>
                        <td>
                            <input class="w-100" type="text" name="price" >
                        </td>
                    </tr>

                    <tr>
                        <td>Thumbnail 1</td>
                        <td>
                            <input class="w-100" type="file" name="url1" >
                        </td>
                    </tr>

                    <tr>
                        <td>Thumbnail 2</td>
                        <td>
                            <input class="w-100" type="file" name="url2" >
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input class="btn btn-primary w-100 mx-1" type="submit" value="NEW PRODUCT">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <a href="product-manager" class="btn btn-primary w-100">List</a>
                        </td>
                    </tr>

                </table>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
