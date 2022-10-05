<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Omikuji</title>
</head>
<body>
<div class="blog_post">
    <div class="container_copy">
        <h1>Here's Your Omikuji</h1>
        <p>In <c:out value="${number}"/> years, you will live in <c:out value="${name}"/> with <c:out value="${real_person}"/> as your roommate, selling origami's for a living. The next time you see a  <c:out value="${living_thing}"/>. You will have good luck. Also,  <c:out value="${say_something }"/></p>
        <a class="btn_primary" href="/back">Home</a>
    </div>

</div>


</body>
</html>