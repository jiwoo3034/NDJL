<%-- 
    Document   : NDJLDisplayMembers
    Created on : Mar 28, 2024, 2:50:37 a.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>

<c:import url="/NDJLBanner.jsp"/>

<h2>List of members</h2>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Full Name</th>
        <th>Program</th>
        <th>Program Year</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="member" items="${members}">
        <tr>
            <td>${member.emailAddress}</td>
            <td>${member.fullName}</td>
            <td>${member.programName}</td>
            <td>${member.yearLevel}</td>
            <td>
                <a href="NDJLMemberAdmin?action=editMember&email=${member.emailAddress}">Edit</a>
                <a href="NDJLMemberAdmin?action=deleteMember&email=${member.emailAddress}">Remove</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="NDJLMemberAdmin?action=addMember">Add Member</a>

<c:import url="/NDJLFooter.jsp"/>
