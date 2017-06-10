package de.karlsruhe.dhbw.webeng.halloduda;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by dannynator on 10.06.17.
 */
@WebServlet(value = "/error")
public class ErrorHandler extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        printWriter.println("Ups! Looks like you didn't find what you were looking for...");
    }
}
