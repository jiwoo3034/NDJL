<%-- 
    Document   : NDJLRegister
    Created on : Feb 7, 2024, 8:40:00 p.m.
    Author     : ljw03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>
<c:import url="/NDJLBanner.jsp"/>

        <form action="NDJLDisplayMember.jsp" method="post">
            <input type="hidden" name="action" value="add">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required><br>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required><br>
            
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required><br>

            <label for="program">IT Program:</label>
            <select id="program" name="program">
                <option value="CAD">Computer Applications Development</option>
                <option value="CPA">Computer Programming and Analysis</option>
                <option value="ITID">Information Technology and Interactive Design</option>
            </select><br>

            <label for="yearLevel">Year Level:</label>
            <select id="yearLevel" name="yearLevel">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select><br>

            <input type="submit" value="Register Now!">
            <input type="reset" value="Reset">
        </form>

<c:import url="/NDJLFooter.jsp"/>

