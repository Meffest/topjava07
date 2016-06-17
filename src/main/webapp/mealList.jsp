<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meal List</title>
    <style>
        .normal{color: green}
        .exceeded{color: red}
    </style>
</head>
<body>
<h2><a href="index.html">Home</a></h2>
<h2>Meal list</h2>
<hr>
<table border="1" cellpadding="8" cellspacing="0">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>
    <c:forEach items="${mealList}" var="meal">
        <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.UserMealWithExceed"/>
        <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
            <td><%=TimeUtil.toString(meal.getDateTime())%></td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
