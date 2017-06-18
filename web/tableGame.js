/**
 * Created by dannynator on 18.06.17.
 */
var checkBoxes = document.getElementsByTagName("input");
var button = document.getElementById("button");

function countChecks (){
    var counter = 0;
    for (i=0; i<checkBoxes.length; i++) {
        if (checkBoxes[i].checked) {
            counter++;
        }
    }
    return counter;
}

function checkboxHandler(){
    if (countChecks() > 1) {
        button.disabled = false;
    } else {
        button.disabled = true;
    }
}

function buttonHandler(){
    document.getElementById("message").innerHTML="I've counted " + countChecks() + " checks";
}

for (var i=0; i<checkBoxes.length; i++) {
    checkBoxes[i].addEventListener("click", checkboxHandler);
}

button.addEventListener("click", buttonHandler);