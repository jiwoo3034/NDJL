<%-- 
    Document   : DNJLIndex
    Created on : Feb 7, 2024, 8:22:26 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<link rel="stylesheet" href="styles/main.css" type="text/css"/>

<c:import url="/NDJLBanner.jsp"/>

<h2>Java Web Technologies: Section 1</h2>
<p>Pair Programming Team: 5</p>

<p><strong>Assignment</strong></p>
<p><strong>Driver: Nishita Deswal</strong></p>
<p><strong>Observer: Jiwoo Lee</strong></p>

<p>Current Date and Time: </p>
<p><strong>
    <%
        Date date = new Date();
        out.print( "<h2 align = \"center\">" +date.toString()+"</h2>");
    %>
    </strong></p>

<c:import url="/NDJLFooter.jsp"/>
