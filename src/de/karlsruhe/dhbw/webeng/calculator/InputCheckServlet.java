package de.karlsruhe.dhbw.webeng.calculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by dannynator on 16.06.17.
 */
@WebServlet (value="/check")
public class InputCheckServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        CalculatorBean calculatorBean;
        RequestDispatcher requestDispatcher;
        if (session.getAttribute("calculator") == null) {
            calculatorBean = new CalculatorBean();
        } else {
            calculatorBean = (CalculatorBean) session.getAttribute("calculator");
        }

        calculatorBean.setVar1(req.getParameter("var1"));
        calculatorBean.setVar2(req.getParameter("var2"));
        calculatorBean.setOperator(req.getParameter("operator"));
        if (calculatorBean.getOK()) {
            requestDispatcher = req.getRequestDispatcher("calculator/results.jsp");
        } else {
            requestDispatcher = req.getRequestDispatcher("calculator/formular.jsp");
        }
        requestDispatcher.forward(req, resp);
    }
}
