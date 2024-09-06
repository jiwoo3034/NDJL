/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.Member;
import club.data.MemberDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ljw03
 */
@WebServlet(name = "NDJLMemberAdminController", urlPatterns = {"/NDJLMemberAdmin"})
public class NDJLMemberAdminController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "displayMembers"; // default action
        }

        switch (action) {
            case "displayMembers" -> displayMembers(request, response);
            case "addMember" -> request.getRequestDispatcher("/NDJLAddMember.jsp").forward(request, response);
            case "editMember" -> {
                String email = request.getParameter("email");
                Member member = MemberDB.selectMember(email);
                if (member != null) {
                    request.setAttribute("member", member);
                    request.getRequestDispatcher("/NDJLEditMember.jsp").forward(request, response);
                } else {
                    response.sendRedirect("memberNotFound.jsp");
                }
            }
            case "deleteMember" -> {
                String email = request.getParameter("email");
                Member member = MemberDB.selectMember(email);
                if (member != null) {
                    request.setAttribute("member", member);
                    request.getRequestDispatcher("/NDJLRemoveMember.jsp").forward(request, response);
                } else {
                    response.sendRedirect("memberNotFound.jsp");
                }
            }
        }
    }
    
    private void displayMembers(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        ArrayList<Member> members = MemberDB.selectMembers();
        request.setAttribute("members", members);
        getServletContext().getRequestDispatcher("/NDJLDisplayMembers.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("saveMember".equals(action)) {
            String url = saveMember(request, response);
            if ("/NDJLDisplayMembers.jsp".equals(url)) {
                displayMembers(request, response); // Display members after saving
            } else {
                request.getRequestDispatcher(url).forward(request, response);
            }
        }
        else if ("deleteMember".equals(action)) {
            String confirm = request.getParameter("confirm");
            String email = request.getParameter("email");
            Member member = MemberDB.selectMember(email);
            
            if ("Yes".equals(confirm)) {
                MemberDB.delete(member);
                displayMembers(request, response);
            } else if ("No".equals(confirm)) {
                // Redirect back to the display members page without deleting
                displayMembers(request, response);
            }
        }
        
    }
    
    private String saveMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Extract form data
        String email = request.getParameter("email");
        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String program = request.getParameter("program");
        int yearLevel = Integer.parseInt(request.getParameter("yearLevel"));
        String db_operation = request.getParameter("db_operation");

        Member member = new Member(fullName, email, phone, program, yearLevel);
        String url = "/NDJLDisplayMembers.jsp";

        if (member.isValid()) {
            // Check if member exists and either update or insert
            boolean exists = MemberDB.emailExists(email);

            if ("update".equals(db_operation)) {
                MemberDB.update(member);
            } else {
                if (!exists) {
                    // If the email does not exist in the database table, insert a new record
                    MemberDB.insert(member);
                } else {
                    // Otherwise, update the existing record
                    MemberDB.update(member);
                }
            }
        } else {
            // Handle validation error
            request.setAttribute("email", email);
            request.setAttribute("fullName", fullName);
            request.setAttribute("phone", phone);
            request.setAttribute("program", program);
            request.setAttribute("yearLevel", yearLevel);
            if ("update".equals(db_operation)) {
                // Forward to edit member page
                request.setAttribute("member", member);
                request.setAttribute("errors", "Please provide a valid name.");
                return "NDJLEditMember.jsp";
            } else {
                // Forward to add member page
                request.setAttribute("errors", "Please provide a valid name and/or email.");
                return "NDJLAddMember.jsp";
            }
        }
        
        return url;
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}