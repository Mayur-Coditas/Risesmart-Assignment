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
</head>

<body><br>
    <div class="heading">
        <h2>User Profile Page</h2>
    </div>
    <div class="container ">
        <div class="col-lg-8
		m-auto d-block">
            <form>
                <div class="form-group">
                    <label>
                        First Name:
                    </label>
                    <input type="text" name="fname" id="fnames" class="form-control">
                    <small id="fnameCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>

                <div class="form-group">
                    <label>
                        Last Name:
                    </label>
                    <input type="text" name="lname" id="lnames" class="form-control">
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

                <div class="form-group">
                    <label>
                        Password:
                    </label>
                    <input type="password" name="password" id="password" class="form-control">
                    <small id="passwordCheck" class="form-text
                text-muted invalid-feedback">
                    </small>
                </div>


                <div class="btn-text-center">
                    <input type="submit" id="submitbtn" value="Update" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>


    <script src="/js/adduser.js"></script>




</body>

</html>