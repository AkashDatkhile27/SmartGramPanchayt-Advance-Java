function SchemeDetails() {
    validateControls();
}
var gender;
var specialization = [];
function validateControls() {
    //Name
    var name = document.getElementById("name")
    if (name.value == "") {
        window.alert("please enter your full name");
        name.focus();
        return false;
    }
    
    //Email
    var email = document.getElementById("email")
    if (email.value == "") {
        window.alert("please enter your valid email Id");
        email.focus();
        return false;
    }
    //Mobile
    var mobile = document.getElementById("mobile")
    if (mobile.value == "") {
        window.alert("please enter your 10 digits mobile no.");
        mobile.focus();
        return false;
    }
    //Gender   
    gender = document.querySelector('input[name="gender"]:checked');
    if (gender === null) {
        window.alert("Gender required!");
        gender.focus();
        return false;
    }
    //Dob
    var dob = document.getElementById("dob")
    if (dob.value == "") {
        window.alert("please enter your Date of Birth");
        dob.focus();
        return false;
    }
    //Address
    var address = document.getElementById("address")
    if (address.value == "") {
        window.alert("please enter your address details");
        address.focus();
        return false;
    }
    //City
    var city = document.getElementById("city")
    if (city.value == "") {
        window.alert("please enter your city name");
        city.focus();
        return false;
    }
    // Pin
    var pin = document.getElementById("pin")
    if (pin.value == "") {
        window.alert("please enter your 6 digits Area PIN");
        pin.focus();
        return false;
    }
    // State
    var state = document.getElementById("state")
    if (state.value == "") {
        window.alert("please enter your state name");
        state.focus();
        return false;
    }
    //scheme
    var scheme = document.getElementById("scheme")
    if (scheme.selectedIndex < 1) {
        window.alert("please choose your Scheme for apply ");
        scheme.focus();
        return false;
    }
    
    // Password
    var password = document.getElementById("password")
    if (password.value == "") {
        window.alert("please enter your password");
        password.focus();
        return false;
    }

    getControlValues();
    

}
