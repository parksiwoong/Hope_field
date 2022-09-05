<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <head>
        <meta charset="UTF-8" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
        <title>게시판</title>
        <script>
            $(document).ready(function(){
                $("#btnWrite").click(function(){
                    location.href = "/testpj/notice/noticeWrite.do"
                })
            })
        </script>
    </head>
<body>

<h2> 게시글 목록 </h2>
<button class="btn btn-primary" id="btnWrite">글쓰기</button>

<div class="container">
    <table class="table table-hover">
        <tr>
            <th>name</th>
            <th>age</th>
            <th>nameTest</th>
        </tr>
        <c:forEach var="board" items="${list}">
            <tr>
                <td>${board.name}</td>
                <td>${board.age}</td>
                <td>${board.nameTest}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
