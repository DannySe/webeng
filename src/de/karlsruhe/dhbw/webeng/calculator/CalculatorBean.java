package de.karlsruhe.dhbw.webeng.calculator;

/**
 * Created by dannynator on 15.06.17.
 */
public class CalculatorBean {
    String var1;
    String var2;
    String operator;
    boolean errorFirstNumber = false;
    boolean errorSecondNumber = false;
    boolean errorOperator = false;
    boolean errorZeroDivision = false;

    public CalculatorBean() {
    }

    public String getVar1() {
        return var1;
    }

    public void setVar1(String var1) {
        if (var1 != null) {
            this.var1 = var1;
        } else {
            this.errorFirstNumber = true;
        }
    }

    public String getVar2() {
        return var2;
    }

    public void setVar2(String var2) {
        if (var2 != null) {
            this.var2 = var2;
        } else {
            this.errorSecondNumber = true;
        }
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        if (operator != null) {
            this.operator = operator;
        } else {
            this.errorOperator = true;
        }
    }

    public boolean getOK(){
        double var2 = 1;
        //Check first number
        try{
            Double.valueOf(var1);
        } catch (NumberFormatException e) {

            this.errorFirstNumber = true;
            return false;
        }
        //Check operator
        if (!operator.equalsIgnoreCase("*") && !operator.equalsIgnoreCase("/")
                && !operator.equalsIgnoreCase("+") && !operator.equalsIgnoreCase("-")) {
            this.errorOperator = true;
            return false;
        }
        //Check second number
        try {
            var2 = Double.valueOf(this.var2);
        } catch (NumberFormatException e) {
            this.errorSecondNumber = true;
            return false;
        }
        //Check division 0
        if (var2 == 0.0 && operator.equalsIgnoreCase("/")) {
            errorZeroDivision = true;
            return false;
        }
        return true;
    }

    public double getResult() {
        double result = 0;
        double var1 = Double.valueOf(this.var1);
        double var2 = Double.valueOf(this.var2);
        char op = operator.charAt(0);
        switch (op) {
            case '+': result = var1 + var2;
            break;
            case '*': result = var1 * var2;
            break;
            case '/': result = var1/var2;
            break;
            case '-': result = var1 - var2;
            break;
            default: result = 0;
            break;
        }
        return result;
    }

    public String getErrorMessageFirstNumber(){
        if (errorFirstNumber) {
            errorFirstNumber = false;
            return "Please give in a valid first number";
        }
        return "";
    }

    public String getErrorMessageSecondNumber() {
        if (errorSecondNumber) {
            errorSecondNumber = false;
            return "Please give in a valid second number";
        }
        return "";
    }

    public String getErrorMessageOperator() {
        if (errorOperator) {
            errorOperator = false;
            return "Please give in a valid Operator (/,*,+,-)";
        } else if (errorZeroDivision) {
            errorZeroDivision = false;
            return "Dividing by 0 is not possible!";
        }
        return "";
    }

}
