<%-- 
    Document   : NDJLAddBook
    Created on : Feb 10, 2024, 9:51:38 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>

<c:import url="/NDJLBanner.jsp"/>

<h2 style="text-align: center;">Add a Book</h2>
<form action="NDJLAddBook" method="post" id="addBookForm">
    <c:forEach items="${errors}" var="error">
        <i style="color: red;">${error}</i><br>
    </c:forEach>
    <label for="code">Code:</label>
    <input type="text" id="code" name="code" value="${code}">

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${description}">

    <label for="quantity">Quantity:</label>
    <input type="text" id="quantity" name="quantity" value="${empty quantity ? '0' : quantity}">

    <input type="submit" value="Save" formaction="NDJLAddBook" formmethod="post">
    <input style="width: 100%;
    padding: 10px;
    margin-top: 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;" type="button" value="Cancel" onclick="window.location.href='NDJLDisplayBooks'">
</form>

<c:import url="/NDJLFooter.jsp"/>
