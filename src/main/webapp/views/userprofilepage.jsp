<!DOCTYPE html>
<html>

<head>

    <title>Add User Page</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/
	4.0.0/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/
	jquery/3.3.1/jquery.min.js">
    </script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/
	popper.js/1.12.9/umd/popper.min.js">
    </script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/
	4.0.0/js/bootstrap.min.js">
    </script>

    <link rel="stylesheet" type="text/css" href="/css/form.css">

    <script>
        $(document).ready(function () {

            function fields(userData) {
                $("#fname").val(userData.firstName);
                $("#lname").val(userData.lastName);
                $("#address").val(userData.address);
                $("#mobile").val(userData.mobileNumber);
                $("#email").val(userData.email);
            }

            $.ajax({

                method: "GET",
                contentType: "application/json; charset=utf-8",
                url: "http://localhost:8080/api/user/" + ${ id },
                dataType: "json",
                success: function (data) {
                    fields(data);

                },
                error: function (error) {
                    alert(error);
                }

});


        var fname_error = true;
        var lname_error = true;
        var address_error = true;
        var mobile_error = true;
        var email_error = true;

        $('#fnameCheck').hide();
        $('#lnameCheck').hide();
        $('#addressCheck').hide();
        $('#mobileCheck').hide();
        $('#emailCheck').hide();

        function fnameCheck() {
            var fnameval = $('#fname').val();

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
                return true;
            }
        }

        function lnameCheck() {
            var lnameval = $('#lname').val();

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
                return true;
            }
        }

        function addressCheck() {
            var addressval = $('#address').val();

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
                return true;
            }
        }

        function mobileCheck() {
            var mobilevar = $('#mobile').val();
            var filter = /[1-9]{1}[0-9]{9}/;

            if (!filter.test(mobilevar) || mobilevar.length > 10) {
                $('#mobileCheck').show();
                $('#mobileCheck').html("Mobile number should be 10 digit");
                mobile_error = false;
                return false;
            } else {
                $('#mobileCheck').hide();
                return true;
            }
        }

        function emailCheck() {
            var emailvar = $('#email').val();
            var EmailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;

            if (!EmailRegex.test(emailvar)) {
                $('#emailCheck').show();
                $('#emailCheck').html("Please Enter valid email ");
                email_error = false;
                return false;
            } else {
                $('#emailCheck').hide();
                return true;
            }
        }

        $('#fname').keyup(function () {
            fnameCheck();
        });

        $('#lname').keyup(function () {
            lnameCheck();
        });

        $('#address').keyup(function () {
            addressCheck();
        });

        $('#mobile').keyup(function () {
            mobileCheck();
        });

        $('#email').keyup(function () {
            emailCheck();
        });


        $('#updatebtn').click(function () {


            fname_error = true;
            lname_error = true;
            address_error = true;
            mobile_error = true;
            email_error = true;

            fnameCheck();
            lnameCheck();
            addressCheck();
            mobileCheck();
            emailCheck();

            if ((fname_error == true) && (lname_error == true) && (address_error == true)
                && (mobile_error == true) && (email_error == true)) {
                return true;
            } else {
                return false;
            }
        });

});
    </script>
</head>

<body><br>
    <div class="heading">
        <h2>User Profile Page</h2>
    </div>
    <div class="container ">
        <div class="col-lg-8
		m-auto d-block">
            
                <div class="form-group">
                    <label>
                        First Name:
                    </label>
                    <input type="text" name="fname" id="fname" class="form-control">
                    <small id="fnameCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>

                <div class="form-group">
                    <label>
                        Last Name:
                    </label>
                    <input type="text" name="lname" id="lname" class="form-control">
                    <small id="lnameCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>

                <div class="form-group">
                    <label>
                        Address:
                    </label>
                    <input type="text" name="address" id="address" class="form-control">
                    <small id="addressCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>

                <div class="form-group">
                    <label>
                        Mobile No:
                    </label>
                    <input type="number" name="mobile" id="mobile" class="form-control">
                    <small id="mobileCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>

                <div class="form-group">
                    <label>
                        Email Id:
                    </label>
                    <input type="text" name="email" id="email" class="form-control">
                    <small id="emailCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>




                <div class="btn-text-center">
                    <input type="submit" id="updatebtn" value="Update" class="btn btn-primary"
                        onclick="updateUser(${ id })">
                </div>
            
        </div>
    </div>


    <script>
        function updateUser(id) {
            var user = {};
            user.firstName = $("#fname").val();
            user.lastName = $("#lname").val();
            user.address = $("#address").val();
            user.mobileNumber = $("#mobile").val();
            user.email = $("#email").val();

            var userObj = JSON.stringify(user);


            $.ajax({
                method: "PUT",
                contentType: "application/json; charset=utf-8",
                url: "http://localhost:8080/api/user/update/" + ${ id },
                dataType: "json",
                data: userObj,
                success: function () {
                    alert('update successfully');
                },
                error: function (error) {
                    alert(error);
                }

    });
    }
    </script>




</body>

</html>