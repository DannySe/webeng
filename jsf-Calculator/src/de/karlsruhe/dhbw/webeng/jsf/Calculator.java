package de.karlsruhe.dhbw.webeng.jsf;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 * Created by dannynator on 18.06.17.
 */
@ManagedBean
@SessionScoped
public class Calculator {
    private double fnum;
    private double snum;
    private String op;

    public double getFnum() {
        return fnum;
    }

    public void setFnum(double fnum) {
        this.fnum = fnum;
    }

    public double getSnum() {
        return snum;
    }

    public void setSnum(double snum) {
        this.snum = snum;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public double result() {
        double result;
        switch (op) {
            case "+": result = fnum + snum;
                break;
            case "-": result = fnum - snum;
                break;
            case "*": result = fnum * snum;
                break;
            case "/": result = fnum / snum;
                break;
            default: result = 0;
                System.out.println("something went wrong");
                break;
        }
        return result;
    }
}
