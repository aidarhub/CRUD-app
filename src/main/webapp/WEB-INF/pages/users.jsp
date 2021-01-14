<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
    <style type="text/css">
        TABLE {
            width: 300px;
            border-collapse: collapse;
        }

        TD, TH {
            padding: 3px;
            border: 1px solid black;
        }

        TH {
            background: #b0e0e6;
        }
    </style>
</head>
<body>
<h2>Users</h2>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>lastName</th>
        <th>age</th>
        <th>action</th>

    </tr>
    <c:forEach var="user" items="${usersList}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.lastName}</td>
            <td>${user.age}</td>

            <td>
                <a href="/edit/${user.id}">edit</a>
                <a href="/delete/${user.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Add</h2>
<c:url value="/add" var="add"/>
<a href="${add}">Add new user</a>
</body>
</html>