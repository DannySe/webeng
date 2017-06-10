package de.karlsruhe.dhbw.webeng.halloduda;

import javax.servlet.ServletConfig;
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
@WebServlet(value = "/halloduda")
public class HalloDuDa extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        StringBuffer response = new StringBuffer();
        response.append("<!DOCTYPE html>");
        response.append("<html><head></head><title> Hallo du da </title>");
        response.append("<body><form action=\"/halloduda\" method=\"post\"> Wie ist dein Name? <input type=\"text\" name=\"firstname\">");
        response.append("<br> <input type=\"submit\" value=\"Absenden\"> </form></body> </html>");
        printWriter.print(response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("firstname");
        PrintWriter printWriter = resp.getWriter();
        StringBuffer response = new StringBuffer();
        response.append("<!DOCTYPE html>");
        response.append("<html><head></head><title> Hallo ");
        response.append(name);
        response.append("</title>");
        response.append("<body><form action=\"/halloduda\" method=\"post\"> Wie ist dein Name? <input type=\"text\" name=\"firstname\">");
        response.append("<br> <input type=\"submit\" value=\"Absenden\"> </form></body> </html>");
        printWriter.print(response);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        System.out.println(this.hashCode() + " || " + getServletContext().hashCode());
        System.out.println(this.getClass().getCanonicalName());
    }
}
