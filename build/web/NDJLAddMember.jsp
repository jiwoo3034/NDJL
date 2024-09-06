<%-- 
    Document   : NDJLAddMember
    Created on : Mar 28, 2024, 3:04:40 a.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>
<c:import url="/NDJLBanner.jsp"/>

<form action="NDJLMemberAdmin" method="POST">
    <h2>Add New Member</h2>
    
    <c:if test="${not empty errors}">
        <div style="color: red;">${errors}</div>
    </c:if>

    <input type="hidden" name="action" value="saveMember"/>
    <input type="hidden" name="db_operation" value="insert" />
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${email}"/><br>
    
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" value="${fullName}"/><br>
    
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="${phone}"/><br>
    
    <label for="program">IT Program:</label>
    <select id="program" name="program">
        <option value="CAD" ${program == 'CAD' ? 'selected' : ''}>Computer Applications Development</option>
        <option value="CPA" ${program == 'CPA' ? 'selected' : ''}>Computer Programming and Analysis</option>
        <option value="ITID" ${program == 'ITID' ? 'selected' : ''}>Information Technology and Interactive Design</option>
    </select><br/>
    
    <label for="yearLevel">Year Level:</label>
    <select id="yearLevel" name="yearLevel">
        <option value="1" ${yearLevel == '1' ? 'selected' : ''}>1</option>
        <option value="2" ${yearLevel == '2' ? 'selected' : ''}>2</option>
        <option value="3" ${yearLevel == '3' ? 'selected' : ''}>3</option>
        <option value="4" ${yearLevel == '4' ? 'selected' : ''}>4</option>
    </select><br/>

    <input type="submit" value="Save"/>
    <input type="reset" value="Reset"/>
</form>

<c:import url="/NDJLFooter.jsp"/>
