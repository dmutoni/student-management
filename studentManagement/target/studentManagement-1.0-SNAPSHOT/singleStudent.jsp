<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2021
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Students Managment</title>
</head>
<body>
<center>
    <h1>Students Management</h1>
    <h2>
        <a href="/studentManagement_war_exploded/new">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/studentManagement_war_exploded/list">List All Students</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Single student</h2></caption>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th></th>
        </tr>
        <tr>
            <td><c:out value="${foundStudent.id}"/></td>
            <td><c:out value="${foundStudent.firstName}"/></td>
            <td><c:out value="${foundStudent.lastName}"/></td>
            <td><c:out value="${foundStudent.gender}"/></td>
            <td>
                <a href="/studentManagement_war_exploded/edit?id=<c:out value='${foundStudent.id}' />">Edit</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/studentManagement_war_exploded/delete?id=<c:out value='${foundStudent.id}' />">Delete</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>