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
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        StringBuffer response = new StringBuffer();
        response.append("<head><title>Hallo ");
        String name = req.getParameter("firstname");
        if (name == null) {
            response.append("du da");
        } else {
            response.append(name);
        }
        response.append("</title></head>");
        response.append("<body><form method=\"post\"> Wie ist dein Name? <input type=\"text\" name=\"firstname\">");
        response.append("<br> <input type=\"submit\" value=\"Absenden\"> </form></body>");
        printWriter.print(response);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        System.out.println(this.hashCode() + " || " + getServletContext().hashCode());
    }
}
