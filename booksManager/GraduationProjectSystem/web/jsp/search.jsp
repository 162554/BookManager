<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gxh
  Date: 2020/7/17
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询图书</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.min.css" />
    <script src="${basePath}/js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="${basePath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        .title{
            text-align: center;
            position: absolute;
            top: 0;
            left: 500px;
            /* opacity:0.2; */
            color: darkgoldenrod;
            font-family: 楷体;
            font-size: 100px;
        }
        .firstPage{
            width: 100%;
            height:800px;
            background-image: url(${basePath}/img/page.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            /* position: absolute;
            left: 300px;
            top: 100px; */
        }
        .content{
            position: absolute;

            left: 500px;
            width: 700px;
            text-align: center;
        }
        table{
            position: absolute;
            top: 300px;
        }
        form{
            position: absolute;
            top: 200px;
        }
        input{
            position: relative;
            left: 00px;
            top: 200px;

        }
        label{
            position: absolute;
            top: 150px;
            left: 0px;
            font-size: 22px;
            font-family: 华文行楷;
        }

    </style>
</head>
<body>
<div class="firstPage">
    <div class="page-header title">
        <h1>查询图书 <small>Add Books</small></h1>
    </div>
    <div class="content">
        <!-- 查询 -->
        <form  method="post" action="${basePath}/searchDetail" style="position: absolute;top: 20px">

        <label >请输入查询的图书名</label>
        <input type="text" id="inputHelpBlock" class="form-control" aria-describedby="helpBlock" style="width: 500px;" name="searchName" value="${name}">
            <button type="submit" class="btn btn-primary" style="background-color: lightblue;position: relative; left: 250px; top: 166px; ">Search一下，你就知道</button>
        </form>

        <!-- 表格 -->
        <table class="table table-hover " style="font-size: 18px;">
            <tr style="text-align: center">
                <th>
                    图书名称
                </th>
                <th>
                    作者
                </th>
                <th>
                    出版社
                </th>
                <th>
                    价格
                </th>
                <th>
                    编码
                </th>

            </tr>
            <c:forEach items="${searchBooks}" var="book">
            <tr style="text-align:left">
                <td>
                    ${book.bookName}
                </td>
                <td>
                    ${book.author}
                </td>
                <td>
                    ${book.publishing}
                </td>
                <td>
                    ${book.price}
                </td>
                <td>
                    ${book.coding}
                </td>

            </tr>
            </c:forEach>
        </table>


        </form>
        <!-- 分页 -->
        <nav aria-label="Page navigation" style="position: absolute; top: 700px; left: 50px;">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">9</a></li>
                <li><a href="#">10</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <a href="${basePath}/jsp/home.jsp">
                <button type="button" class="btn btn-primary">返回上一页</button>
                </a>
            </ul>

        </nav>

    </div>
</div>
</body>
</html>


