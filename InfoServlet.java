package com.li.week2.homework;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InfoServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String birthdate = request.getParameter("birthdate");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>User registration information</h2>");
        out.println("<p>user: " + username + "</p>");
        out.println("<p>password: " + password + "</p>");
        out.println("<p>email: " + email + "</p>");
        out.println("<p>Date of birth: " + birthdate + "</p>");
        out.println("</body></html>");
    }
}