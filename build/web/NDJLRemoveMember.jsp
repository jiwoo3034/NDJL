<%-- 
    Document   : NDJLRemoveMember
    Created on : Mar 29, 2024, 12:43:32 a.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>
<c:import url="/NDJLBanner.jsp"/>

<form action="NDJLMemberAdmin" method="POST">
    <h2>Do you want to delete this member?</h2>
    
    <c:if test="${not empty errors}">
        <div style="color: red;">${errors}</div>
    </c:if>
    <input type="hidden" name="action" value="deleteMember" />
    <input type="hidden" name="db_operation" value="delete" />
    
    <label for="email">Email:</label>
    <input type="email" name="email" value="${member.emailAddress}" readonly />
    
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" value="${member.fullName}" readonly /><br>
    
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="${member.phoneNumber}" readonly /><br>
    
    <label for="program">IT Program:</label>
    <input type="text" id="program" name="program" value="${member.programName}" readonly /><br>
    
    <label for="yearLevel">Year Level:</label>
    <input type="text" id="yearLevel" name="yearLevel" value="${member.yearLevel}" readonly /><br>

    <input type="submit" name="confirm" value="Yes"/>
    <input type="submit" name="confirm" value="No"/>
</form>

<c:import url="/NDJLFooter.jsp"/>
