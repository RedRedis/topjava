<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h3>Meals</h3>
<table border="2" cellpadding="5" cellspacing="1" >
    <tr><th>Date</th><th>Description</th><th>Calories</th></tr>
    <c:forEach var="meal" items="${meals}">
        <tr style="color: ${meal.excess ? 'red' : 'green'}" >
            <td>
                <fmt:parseDate value="${meal.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" />
                <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${parsedDateTime}" />
            </td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
