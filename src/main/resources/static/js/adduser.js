$(document).ready(function () {

    $('#fnameCheck').hide();
    $('#lnameCheck').hide();
    $('#addressCheck').hide();
    $('#mobileCheck').hide();
    $('#emailCheck').hide();
    $('#passwordCheck').hide();



    var fname_error = true;
    var lname_error = true;
    var address_error = true;
    var mobile_error = true;
    var email_error = true;
    var password_error = true;

    $('#fnames').keyup(function () {
        fnameCheck();
    });

    $('#lnames').keyup(function () {
        lnameCheck();
    });

    $('#addresses').keyup(function () {
        addressCheck();
    });

    $('#mobiles').keyup(function () {
        mobileCheck();
    });

    $('#emails').keyup(function () {
        emailCheck();
    });

    $('#passwords').keyup(function () {
        passwordCheck();
    });




    function fnameCheck() {
        var fnameval = $('#fnames').val();

        if (fnameval.length == '' || fnameval == ' ') {
            $('#fnameCheck').show();
            $('#fnameCheck').html("First Name is Missing");
            fname_error = false;
            return false;
        } else if ((fnameval.length < 1) || (fnameval.length > 20)) {
            $('#fnameCheck').show();
            $('#fnameCheck').html("name should be less or equal 20 characters");
            fname_error = false;
            return false;
        }
        else {
            $('#fnameCheck').hide();
        }
    }

    function lnameCheck() {
        var lnameval = $('#lnames').val();

        if (lnameval.length == '' || lnameval == ' ') {
            $('#lnameCheck').show();
            $('#lnameCheck').html("Last Name is Missing");
            lname_error = false;
            return false;
        } else if ((lnameval.length < 1) || (lnameval.length > 20)) {
            $('#lnameCheck').show();
            $('#lnameCheck').html("name should be less or equal 20 characters");
            lname_error = false;
            return false;
        }
        else {
            $('#lnameCheck').hide();
        }
    }

    function addressCheck() {
        var addressval = $('#addresses').val();

        if ((addressval.length == '') || (addressval == ' ')) {
            $('#addressCheck').show();
            $('#addressCheck').html("Address is missing");
            address_error = false;
            return false;
        } else if ((addressval.length < 1) || (addressval.length > 100)) {
            $('#addressCheck').show();
            $('#addressCheck').html("Address should be less or equal 100 characters");
            address_error = false;
            return false;
        }
        else {
            $('#addressCheck').hide();
        }
    }

    function mobileCheck() {
        var mobilevar = $('#mobiles').val();
        var filter = /[1-9]{1}[0-9]{9}/;

        if (!filter.test(mobilevar) || mobilevar.length > 10) {
            $('#mobileCheck').show();
            $('#mobileCheck').html("Mobile number should be 10 digit")
            mobile_error = false;
            return false;
        } else {
            $('#mobileCheck').hide();
        }
    }

    function emailCheck() {
        var emailvar = $('#emails').val();
        var EmailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;

        if (!EmailRegex.test(emailvar)) {
            $('#emailCheck').show();
            $('#emailCheck').html("Please Enter valid emails ");
            email_error = false;
            return false;
        } else {
            $('#emailCheck').hide();
        }
    }

    function passwordCheck() {
        var passwordvar = $('#passwords').val();

        if (passwordvar.length <= 6) {
            $('#passwordCheck').show();
            $('#passwordCheck').html("Password should be greater than 6 character");
            password_error = false;
            return false;
        } else {
            $('#passwordCheck').hide();
        }
    }




    $('#submitbtn').click(function () {
        fname_error = true;
        lname_error = true;
        address_error = true;
        mobile_error = true;
        email_error = true;
        password_error = true;

        fnameCheck();
        lnameCheck();
        addressCheck();
        mobileCheck();
        emailCheck();
        passwordCheck();

        if ((fname_error == true) && (lname_error == true) && (address_error == true)
            && (mobile_error == true) && (email_error == true) && (password_error == true)) {
            return true;
        } else {
            return false;
        }

    });

});
