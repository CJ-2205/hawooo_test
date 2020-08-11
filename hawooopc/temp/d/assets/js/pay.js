/****** Payment form script ******/

var onlinePayments = document.getElementById("online-payments");
var offlinePayments = document.getElementById("offline-payments");
var onlineInput = document.getElementsByClassName("online-input");
var offlineInput = document.getElementsByClassName("offline-input");
var onlineOptions = document.getElementById("online-options");
var offlineOptions = document.getElementById("offline-options");
var onlinePayInput = document.getElementById("onlinePayInput");
//var onlineOption1 = document.getElementById("online-option-1");
//var onlineOption2 = document.getElementById("online-option-2");
////var onlineOption3 = document.getElementById("online-option-3");
//var offlineOption1 = document.getElementById("offline-option-1");
//var offlineOption2 = document.getElementById("offline-option-2");
//var offlineOption3 = document.getElementById("offlineoption3");

onlinePayments.onclick = function () {
    onlinePayTab();
}

offlinePayments.onclick = function () {
    offlinePayTab();
}

//onlineOption1.onclick = function () {
//    document.getElementById("op1").checked = true;
//    clearCheckIcon();
//}
//onlineOption2.onclick = function () {
//    document.getElementById("op2").checked = true;
//    clearCheckIcon();
//}
//onlineOption3.onclick = function () {
//    document.getElementById("op3").checked = true;
//    clearCheckIcon();
//}

//offlineOption1.onclick = function () {
//    document.getElementById("ofp1").checked = true;
//    clearCheckIcon();
//}
//offlineOption2.onclick = function () {
//    document.getElementById("ofp2").checked = true;
//    clearCheckIcon();
//}
//if (offlineOption3 === 'null') {
//    offlineOption3.onclick = function () {
//        document.getElementById("ofp3").checked = true;
//        clearCheckIcon();
//    }
//}

function setCheck(id) {
    document.getElementById(id).checked = true;
    clearCheckIcon();
}


function onlinePayTab() {
    onlineOptions.style.display = "block";
    offlineOptions.style.display = "none";
    for (var i = 0; i < offlineInput.length; i++) {
        offlineInput[i].setAttribute("disabled", "");
    }
    for (var i = 0; i < onlineInput.length; i++) {
        onlineInput[i].removeAttribute("disabled");
    }
    //if (onlinePayInput.checked === true) {
    //    onlineOptions.style.display = "block";
    //    offlineOptions.style.display = "none";
    //    for (var i = 0; i < offlineInput.length; i++) {
    //        offlineInput[i].setAttribute("disabled", "");
    //    }
    //    for (var i = 0; i < onlineInput.length; i++) {
    //        onlineInput[i].removeAttribute("disabled");
    //    }
    //} else {
    //    onlineOptions.style.display = "none";
    //}
}

function offlinePayTab() {
    offlineOptions.style.display = "block";
    for (var i = 0; i < onlineInput.length; i++) {
        onlineInput[i].setAttribute("disabled", "");
    }
    onlineOptions.style.display = "none";
    for (var i = 0; i < offlineInput.length; i++) {
        offlineInput[i].removeAttribute("disabled");
    }
    //if (offlinePayInput.checked === true) {
    //    offlineOptions.style.display = "block";
    //    for (var i = 0; i < onlineInput.length; i++) {
    //        onlineInput[i].setAttribute("disabled", "");
    //    }
    //    onlineOptions.style.display = "none";
    //    for (var i = 0; i < offlineInput.length; i++) {
    //        offlineInput[i].removeAttribute("disabled");
    //    }

    //} else {
    //    offlineOptions.style.display = "none";

    //}
}


/****** ******/




function clearCheckIcon() {
    var checkIcon = document.getElementsByClassName('checkIcon');
    for (var k = 0; k < checkIcon.length; k++) {
        checkIcon[k].style.zIndex = '';
    }
}

var logoContainer = document.getElementsByClassName('logoContainer')[0];
var onlineBankingRadio = document.getElementsByClassName('onlineBankingRadio');

logoContainer.addEventListener('click', function (event) {

    //for (var i = 0; i < logoContainer.childNodes.length; i++) {
    //    var tagName = logoContainer.childNodes[i].tagName;
    //    if (tagName) {
    //        if (tagName.toLowerCase() === 'div') {
    //            var onlineBankingDivs = logoContainer.childNodes[i];
    //            onlineBankingDivs.style.border = 'none';
    //        }
    //    }
    //}

    clearCheckIcon();

    if (event.target.className == 'onlineBankingDiv') {

        var onlineBankingDiv = event.target;
        //onlineBankingDiv.style.border = '1px #FF5F7E solid';
        for (var j = 0; j < event.target.childNodes.length; j++) {
            var tagName = event.target.childNodes[j].tagName;

            if (tagName) {
                //alert(tagName);
                //debugger;
                //if (tagName.toLowerCase() === 'span') {
                //    var radioButton = tagTagName.target.childNodes[k];
                //    radioButton.checked = true;
                //}
                //else {
                //    var radioButton = event.target.childNodes[j];
                //    radioButton.checked = false;
                //}
                if (tagName.toLowerCase() == 'span') {
                    event.target.childNodes[j].firstChild.checked = true;
                }
                if (tagName.toLowerCase() == 'i') {
                    checkIcon = event.target.childNodes[j];
                    checkIcon.style.zIndex = '1';
                }
            }
        }
    }

});

