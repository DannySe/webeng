/**
 * Created by dannynator on 16.06.17.
 */

var inputs = document.getElementsByTagName("input");
var select = document.getElementById("title");

var changeHandler = function setField(event) {
    var input = event.target;
    var label = document.getElementById("l" + input.id);
    label.innerHTML = input.value;
}

select.addEventListener("change", function (event) {changeHandler(event);});
for (i = 0; i < inputs.length; i++ ) {

    var e = inputs[i];
    e.addEventListener("change", function(event){changeHandler(event);})
}


