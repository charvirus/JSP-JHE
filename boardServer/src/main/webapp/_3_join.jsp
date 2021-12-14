<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        span{
            white-space: pre;
        }
    </style>
    <title>Join</title>
</head>
<body>
    <h1>Join</h1>
    <form method="post" action="_4_joinPro.jsp">
        <span>ID:&#9;</span><input type="text" name="id" required><br><br>
        <span>PW:&#9;</span><input type="password" name="pw" required><br><br>
        <input type="submit"  value = "가입">
    </form>
</body>
</html>