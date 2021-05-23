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
    <link rel="stylesheet" href="commons/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="commons/style.css">
    <link rel="stylesheet" type="text/css" href="commons/default-a-tag.css">
    <title>Homepage</title>
</head>
<body>

<%@include file="/WEB-INF/tags/header.jsp" %>

<div class="main">
    <div class="item">
        <div class="img" style="height: 320px">
            <a href="">
                <img class=".img-thumbnail" alt="" src="commons/images/allblack.jpg" style="width: 100%; height: 100%">
            </a>
        </div>

        <div class="content" style="margin: 10px 0">
            <h3 class="title">
                <a href="">ALL BLACK IN BLACK</a>
            </h3>
            <h3 class="description">
                <p>Mặc dù được ứng dụng rất nhiều, nhưng sắc đen lúc nào cũng toát lên một vẻ huyền bí không nhàm
                    chán</p>
            </h3>
        </div>
    </div>

    <div class="item">
        <div class="img" style="height: 320px">
            <a href="">
                <img alt="" src="commons/images/Sale-off.jpg" style="width: 100%; height: 100%">
            </a>
        </div>
        <div class="content" style="margin: 10px 0">
            <h3 class="title">
                <a href="">OUTLET SALE</a>
            </h3>
            <h3 class="description">
                <p>Danh mục những sản phẩm bán tại "giá tốt hơn" chỉ được bán kênh online - Online Only,
                    chúng đã từng làm mưa làm gió một thời gian và hiện đang rơi vào tình trạng bể size, bể số</p>
            </h3>
        </div>
    </div>
</div>

<div class="news">
    <div class="title">
        <h2>TIN TỨC & BÀI VIẾT</h2>
    </div>

    <div class="posts">
        <div class="post">
            <a href="" class="img">
                <img alt="" src="commons/images/blog_thefirs.jpg">
            </a>
            <div class="content">
                <a href="">
                    <h3 class="title">VÌ SAO LÀ LUCKY LUKE?</h3>
                </a>
                <p class="description">Quay về thời điểm trước khi ngỏ lời mời,
                    đội ngũ Ananas tìm thấy khá nhiều lí do làm chất xúc tác cho sự “liều lĩnh” này.
                    Đó là sự cảm tính có cơ sở để nảy ra ý...</p>
            </div>
        </div>

        <div class="post">
            <a href="" class="img">
                <img alt="" src="commons/images/kvngang_web0.jpg">
            </a>
            <div class="content">
                <a href="">
                    <h3 class="title">URBAS CORLURAY PACK</h3>
                </a>
                <p class="description">Urbas Corluray Pack đem đến lựa chọn “làm mới mình”
                    với sự kết hợp 5 gam màu mang sắc thu;
                    phù hợp với những người trẻ năng động, mong muốn thể...</p>
            </div>
        </div>

        <div class="post">
            <a href="" class="img">
                <img alt="" src="commons/images/Mobile_Blog.jpg">
            </a>
            <div class="content">
                <a href="">
                    <h3 class="title">VINTAS SAIGON 1980s</h3>
                </a>
                <p class="description">Với bộ 5 sản phẩm, Vintas Saigon 1980s Pack
                    đem đến một sự lựa chọn “cũ kỹ thú vị” cho những người
                    trẻ sống giữa thời hiện đại nhưng lại yêu nét...</p>
            </div>
        </div>

        <div class="post">

            <a href="" class="img">
                <img alt="" src="commons/images/peeping_pattas01.jpg">
            </a>
            <div class="content">
                <a href="">
                    <h3 class="title">SNEAKER FEST VIETNAM VÀ SỰ KẾT HỢP</h3>
                </a>
                <p class="description">Việc sử dụng dáng giày Vulcanized High Top của Ananas
                    trong thiết kế và cảm hứng bắt nguồn từ linh
                    vật Peeping - đại diện cho tinh thần xuyên...</p>
            </div>
        </div>

    </div>
    <div class="more">
        <a href="">
            Muốn Xem nữa
        </a>
    </div>
</div>

<%@include file="/WEB-INF/tags/footer.jsp" %>


</body>
</html>