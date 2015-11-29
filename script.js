
function refreshWall() {
    $("#wall").load("/profile/update #wall2");
}

function refreshFriendWall() {
    $("#friend-wall").load("/profile/wall #friend-wall");
}
function validateSignIn() {
    var message = document.getElementById('messageSignIn');

    var emailField = document.getElementById('emailSignIn');
    var passField = document.getElementById('passwordSignIn');

    var email = emailField.value;
    var pass = passField.value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");

    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
        emailField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Email is incorrect";
        return false;
    } else {
        emailField.className = "correct-field";
    }

    if (pass === null || pass === "") {
        passField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password is missing";
        return false;
    } else {
        passField.className = "correct-field";
    }

    return true;
}

function validateSignInIndex() {
    var message = document.getElementById('messageSignInIndex');

    var emailField = document.getElementById('emailSignInIndex');
    var passField = document.getElementById('passwordSignInIndex');

    var email = emailField.value;
    var pass = passField.value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");

    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
        emailField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Email is incorrect";
        return false;
    } else {
        emailField.className = "correct-field";
    }

    if (pass === null || pass === "") {
        passField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password is missing";
        return false;
    } else {
        passField.className = "correct-field";
    }

    return true;
}

function validateSignUp() {

    var message = document.getElementById('messageSignUp');

    var ssnField = document.getElementById('ssnSignUp');
    var firstnameField = document.getElementById('firstnameSignUp');
    var lastnameField = document.getElementById('lastnameSignUp');
    var monthField = document.getElementById('monthSignUp');
    var dayField = document.getElementById('daySignUp');
    var yearField = document.getElementById('yearSignUp');
    var sexField = document.getElementById('sexSignUp');
    var phoneField = document.getElementById('phoneSignUp');
    var emailField = document.getElementById('emailSignUp');
    var pass1Field = document.getElementById('password1SignUp');
    var pass2Field = document.getElementById('password2SignUp');

    var ssn = ssnField.value;
    var firstname = firstnameField.value;
    var lastname = lastnameField.value;

    var month = monthField.value;
    var day = dayField.value;
    var year = yearField.value;
    var sex = sexField.value;
    var email = emailField.value;
    var pass1 = pass1Field.value;
    var pass2 = pass2Field.value;
    var phone = phoneField.value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");

    if (ssn === null || ssn === "") {
        ssnField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "SSN is missing";
        return false;
    } else {
        ssnField.className = "correct-field";
    }

    if (firstname === null || firstname === "") {
        firstnameField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Firstname is missing";
        return false;
    } else {
        firstnameField.className = "correct-field";
    }

    if (lastname === null || lastname === "") {
        lastnameField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Lastname is missing";
        return false;
    } else {
        lastnameField.className = "correct-field";
    }

    if (month === null || month === "-") {
        monthField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Month is incorrect";
        return false;
    } else {
        monthField.className = "correct-field";
    }

    if (day === null || day === "-") {
        dayField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Day is incorrect";
        return false;
    } else {
        dayField.className = "correct-field";
    }

    if (year === null || year === "-") {
        yearField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Year is incorrect";
        return false;
    } else {
        yearField.className = "correct-field";
    }

    if (sex === null || sex === "-") {
        sexField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Sex is incorrect";
        return false;
    } else {
        sexField.className = "correct-field";
    }

    if (phone === null || phone === "" || phone.length < 10 || !isNumber(phone)) {
        phoneField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Phone is incorrect";
        return false;
    } else {
        phoneField.className = "correct-field";
    }

    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
        emailField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Email is incorrect";
        return false;
    } else {
        emailField.className = "correct-field";
    }

    if (pass1 === null || pass1 === "") {
        pass1Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password is missing";
        return false;
    } else {
        pass1Field.className = "correct-field";
    }

    if (pass1.length <= 4) {
        pass1Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password requires more than 4 caracters";
        return false;
    } else {
        pass1Field.className = "correct-field";
    }

    if (pass2 === null || pass2 === "") {
        pass2Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Please confirm password";
        return false;
    } else {
        pass2Field.className = "correct-field";
    }

    if (pass2 !== pass1) {
        pass1Field.className = "incorrect-field";
        pass2Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password doesn't match";
        return false;
    } else {
        pass2Field.className = "correct-field";
    }

    return true;
}

function validateAddExam() {
    var message = document.getElementById('message');

    var serviceField = document.getElementById('service');
    var contentField = document.getElementById('content');

    var content = contentField.value;
    var service = serviceField.value;

    if (service === null || service === "-") {
        serviceField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Select a service";
        return false;
    } else {
        serviceField.className = "correct-field";
    }

    if (content === null || content === "") {
        contentField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Please add a status";
        return false;
    } else {
        contentField.className = "correct-field";
    }

    return true;
}




function setSignInVisible()
{
    var name = document.getElementById("dropdownsignin");
    //var name2 = document.getElementById("dropdownsigninList");

    //if(name2.style.display !== "list-item"){
    //    name2.style.display = "list-item";
    //}
    //else
    //{
    //    name2.style.display = "list-item";
    //}
    if (name.style.display === "list-item")
        name.style.display = "none";
    else
        name.style.display = "list-item";



    //name.style.backgroundColor = "green";
}

function activeTabNavBar(i) {
    inactiveAllTabNavBar();
    switch (i)
    {
        case 1:
            var a = document.getElementById("bar1");
            a.className = "active";
            break;
        case 2:
            var a = document.getElementById("bar2");
            a.className = "active";
            break;
        case 3:
            var a = document.getElementById("bar3");
            a.className = "active";
            break;
        case 4:
            var a = document.getElementById("bar4");
            a.className = "active";
            break;


    }
    var name = document.getElementById("nav-bar");
    alert(name.getElementsByTagName("ul")[1].className.toString());
    name.getElementsByTagName("ul")[1].className = (name.getElementsByTagName("ul")[1].className === "active") ? "none" : "active";

}

function inactiveAllTabNavBar()
{

    for (var i = 0; i < 4; i++)
    {
        var a = document.getElementById("bar" + (i + 1));
        a.className = "none";
    }

}

function validateEditCoordonnate() {
    var message = document.getElementById('messageEdit');

    var ssnField = document.getElementById('ssnEdit');
    //var firstnameField = document.getElementById('firstnameEdit');
    //var lastnameField = document.getElementById('lastnameEdit');
    //var sexField = document.getElementById('sexEdit');
    var emailField = document.getElementById('emailEdit');
    var phoneField = document.getElementById('phoneEdit');

    var ssn = ssnField.value;
//    var firstname = firstnameField.value;
//    var lastname = lastnameField.value;
    // var sex = sexField.value;
    var email = emailField.value;
    var phone = phoneField.value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");

    if (ssn === null || ssn === "") {
        ssnField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "SSN is missing";
        return false;
    } else {
        ssnField.className = "correct-field";
    }

//    if (firstname === null || firstname === "") {
//        firstnameField.className = "incorrect-field";
//        message.className = "print-message-form";
//        message.innerHTML = "Firstname is missing";
//        return false;
//    } else {
//        firstnameField.className = "correct-field";
//    }
//
//    if (lastname === null || lastname === "") {
//        lastnameField.className = "incorrect-field";
//        message.className = "print-message-form";
//        message.innerHTML = "Lastname is missing";
//        return false;
//    } else {
//        lastnameField.className = "correct-field";
//    }

//    if (sex === null || sex === "-") {
//        sexField.className = "incorrect-field";
//        message.className = "print-message-form";
//        message.innerHTML = "Sex is incorrect";
//        return false;
//    } else {
//        sexField.className = "correct-field";
//    }

    if (phone === null || phone === "" || phone.length < 10 || !isNumber(phone)) {
        phoneField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Phone is incorrect";
        return false;
    } else {
        phoneField.className = "correct-field";
    }

    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
        emailField.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Email is incorrect";
        return false;
    } else {
        emailField.className = "correct-field";
    }

    return true;
}

function validateEditPassword() {
    var message = document.getElementById('messageEdit');

    var pass1Field = document.getElementById('password1Edit');
    var pass2Field = document.getElementById('password2Edit');

    var pass1 = pass1Field.value;
    var pass2 = pass2Field.value;

    if (pass1 === null || pass1 === "") {
        pass1Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password is missing";
        return false;
    } else {
        pass1Field.className = "correct-field";
    }

    if (pass2 === null || pass2 === "") {
        pass2Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Please confirm password";
        return false;
    } else {
        pass2Field.className = "correct-field";
    }

    if (pass2.length <= 4) {
        pass1Field.className = "incorrect-field";
        pass2Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password requires more than 4 caracters";
        return false;
    } else {
        pass2Field.className = "correct-field";
    }

    if (pass2 !== pass1) {
        pass1Field.className = "incorrect-field";
        pass2Field.className = "incorrect-field";
        message.className = "print-message-form";
        message.innerHTML = "Password doesn't match";
        return false;
    } else {
        pass2Field.className = "correct-field";
    }

    return true;
}

function validateAddPatient() {
    var message = document.getElementById('messagePatient');

    var patientField = document.getElementById('patientName');

    var patientName = patientField.value;

    if (patientName === null || patientName === "" || patientName === "-") {
        patientField.className = "incorrect-field";
        patientField.className = "print-message-form";
        message.innerHTML = "Select a patient";
        return false;
    } else {
        patientField.className = "correct-field";
    }

    return true;
}

function validateAddFriend() {
    //var message = document.getElementById('messageFriend');

    var friendField = document.getElementById('friendID');

    var friend = friendField.value;

    if (friend === null || friend === "" || friend === "-") {
        friendField.className = "incorrect-field";
        friendField.className = "print-message-form";
        // message.innerHTML = "Select someone";
        return false;
    } else {
        friendField.className = "correct-field";
    }

    return true;
}

function validateAddFriendPost() {

    var commentField = document.getElementById('comment');

    var comment = commentField.value;

    if (comment === null || comment === "") {

        return false;
    }

    return true;
}

function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);

}

function checkUploadedFile(src) {
    var message = document.getElementById("messagePhoto");
    
    var fileName = document.getElementById("fileUpload").value;

    var typeIndex = fileName.lastIndexOf(".");
    var type = fileName.substring(typeIndex + 1, fileName.length);

    if (fileName === "") {
        //alert("Please select a file");
        message.className = "print-message-form";
        message.innerHTML = "Please select a file";
        return false;
    }
    else if (type.toUpperCase() === "PNG" ||
            type.toUpperCase() === "JPEG" ||
            type.toUpperCase() === "JPG")
        return true;
    else {
        //alert("Only png, jpg and jpeg files are valid.");
        message.className = "print-message-form";
        message.innerHTML = "Only PNG, JPG files";
        return false;
    }
    return true;
}