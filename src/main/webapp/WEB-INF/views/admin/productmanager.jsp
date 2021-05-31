<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
          crossorigin="anonymous">
    <style type="text/css">
        #table-wrapper {
            border-collapse: collapse;
            width: 70%;
        }

        #table-wrapper tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #table-wrapper tr:hover {
            background-color: #ddd;
        }

        #table-wrapper tr td {
            font-size: 23px;
        }

        #table-wrapper td, #table-wrapper th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        img {
            object-fit: cover;
            width: 50%;
        }
    </style>
</head>
<body>
<div class="container-fluid d-flex align-items-center flex-column">
    <h1 class="pt-5 pb-5">Porducts Manager</h1>
    <a href="new-product" class="btn btn-primary text-center">New Product</a>
    <table id="table-wrapper">
        <caption></caption>
        <tr class="bg-secondary"
            style="height: 100px; font-size: 23px; Color: white;">
            <th>STT</th>
            <th>Tên Sản Phẩm</th>
            <th>Hình Ảnh 1</th>
            <th>Hình Ảnh 2</th>
            <th>Màu</th>
            <th>Giá</th>
            <th style="width: 100px;">Action</th>
        </tr>

        <c:forEach var="p" items="${products }" varStatus="i">
            <tr>
                <td>${i.getCount()}</td>
                <td>${p.getName()}</td>
                <td><img style="width: 50px; height: 50px" alt=""
                         src="commons/images/${p.getThumbnail().getThumbnail1()}"></td>
                <td><img style="width: 50px; height: 50px" alt=""
                         src="commons/images/${p.getThumbnail().getThumbnail2()}"></td>
                <td>${p.getColor()}</td>
                <td>${p.getPrice()}</td>

                <td style="width: 200px;"><c:set var="id" value="${p.getId()}"/>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-warning"
                            data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop${i.getCount()}">Update
                    </button> <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop${i.getCount()}"
                         data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                         aria-labelledby="staticBackdrop${i.getCount()}Label"
                         aria-hidden="false">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"
                                        id="staticBackdrop${i.getCount()}Label">UPDATE PRODUCT
                                            ${id}</h5>
                                    <button type="button" class="btn-close"
                                            data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <form:form action="WebShoes/product-manager/update1" modelAttribute="product">
                                        <input type="hidden" class="form-control" name="id" value="${id}">
                                        <div class="mb-3">
                                            <label>Product name:</label>
                                            <input type="text" class="form-control" name="name" path="name"
                                                   value="${p.getName()}">
                                        </div>
                                        <div class="mb-3">
                                            <label>Color:</label>
                                            <input type="text" class="form-control" name="color"
                                                   value="${p.getColor()}">
                                        </div>
                                        <div class="mb-3">
                                            <label>Price:</label>
                                            <input type="text" class="form-control" name="price"
                                                   value="${p.getPrice()}">
                                        </div>
                                        <div class="mb-3">
                                            <label>Thumbnail url 1:</label>
                                            <input type="file" name="url1" class="form-control"
                                                   value="${p.getThumbnail().getThumbnail1()}">
                                        </div>

                                        <div class="mb-3">
                                            <label>Thumbnail url 2:</label>
                                            <input type="file" name="url2" class="form-control"
                                                   value="${p.getThumbnail().getThumbnail2()}">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="submit" class="btn btn-primary">
                                                Save changes
                                            </button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div> <!-- Button trigger modal -->
                    <a href="delete-product/${p.id }" class="btn btn-danger ms-3" >
                        Delete
                    </a>
                    
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>