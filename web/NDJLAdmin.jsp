<%-- 
    Document   : NDJLAdmin
    Created on : Feb 10, 2024, 9:10:52 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>

<c:import url="/NDJLBanner.jsp"/>

<h2>Admin: Data Maintenance</h2>
<p><a href="NDJLDisplayBooks">Maintain Books</a></p>
<p><a href="<c:url value='/NDJLMemberAdmin?action=displayMembers'/>">Display Members</a></p>

<c:import url="/NDJLFooter.jsp"/>
