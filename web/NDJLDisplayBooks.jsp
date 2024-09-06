<%-- 
    Document   : NDJLDisplayBooks
    Created on : Feb 10, 2024, 9:43:48 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>

<c:import url="/NDJLBanner.jsp"/>

<h2>List of Books</h2>
<table border="1">
    <thead>
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>Quantity</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.code}</td>
                <td>${book.description}</td>
                <td>${book.quantity}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a href="NDJLAddBook.jsp">
    <button style="
    padding: 10px;
    margin-top: 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;" type="button">Add</button>
</a>

<c:import url="/NDJLFooter.jsp"/>
