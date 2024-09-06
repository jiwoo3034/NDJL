<%-- 
    Document   : NDJLDisplayMember
    Created on : Feb 7, 2024, 8:43:30 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>
<c:import url="/NDJLBanner.jsp"/>

<h1>Thanks for Joining!</h1>

<p>Full Name: ${param.firstName} ${param.lastName}</p>
<p>Email: ${param.email}</p>
<p>Phone: ${param.phone}</p>
<p>IT Program: ${param.program}</p>
<p>Year Level: ${param.yearLevel}</p>

<form action="NDJLRegister.jsp" method="post">
    <button type="submit">Return</button>
</form>

<c:import url="/NDJLFooter.jsp"/>
