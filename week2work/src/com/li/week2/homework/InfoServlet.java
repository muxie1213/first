package com.li.week2.homework;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // 从请求参数中获取姓名和学生证ID
        String name = "li chu hao"; // 替换为你的姓名
        String studentId = "2022211001000511"; // 替换为你的学生证ID

        // 获取当前日期和时间
        Date currentDate = new Date();

        // 输出信息到客户端
        out.println("<html><body>");
        out.println("<h2>name: " + name + "</h2>");
        out.println("<h2>ID: " + studentId + "</h2>");
        out.println("<h2>time: " + currentDate.toString() + "</h2>");
        out.println("</body></html>");
    }
}
