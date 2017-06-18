package de.karlsruhe.dhbw.webeng.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 * Created by dannynator on 18.06.17.
 */
@FacesValidator("de.karlsruhe.dhbw.webeng.jsf.zeroDivisionValidator")
public class zeroDivisionValidator implements Validator {
    @Override
    public void validate(FacesContext facesContext, UIComponent uiComponent, Object o) throws ValidatorException {
        String operator = (String) o;
        UIInput bindComponent = (UIInput) uiComponent.getAttributes().get("snum");
        String snumString = (String) bindComponent.getSubmittedValue();
        if (!operator.equalsIgnoreCase("+") && !operator.equalsIgnoreCase("-")
                && !operator.equalsIgnoreCase("*") && !operator.equalsIgnoreCase("/")) {
            throw new ValidatorException(new FacesMessage("Please choose one of the following operators: + - * /"));
        }
        try {
            double snum = Double.valueOf(snumString);
            if (snum == 0.0 && operator.equalsIgnoreCase("/")) {
                throw new ValidatorException(new FacesMessage("Division with 0 is not allowed!"));
            }
        } catch (NumberFormatException e){
            return;
        }
    }
}
