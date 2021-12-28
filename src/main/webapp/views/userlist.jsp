<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

            <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css" />
            <script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>


            <!-- <link rel="stylesheet" type="text/css" href="/css/form.css"> -->
            <style>
                .table-container {
                    max-width: 450px;
                    margin: 10px auto;
                    padding: 30px;
                }
            </style>

            <script>

                function pageRedirect(id) {

                    $.ajax({
                        method: "GET",
                        contentType: "application/json; charset=utf-8",
                        url: "http://localhost:8080/api/user/" + id,
                        dataType: "json",
                        success: function (data) {
                            if (data.status = "success") {
                                window.location.href = "user/profile/"+id;
                            }
                            else {
                                alert("error found");
                            }

                        },
                        error: function (error) {
                            alert(error);
                        }

                    });
                }

            </script>

        </head>

        <body><br>
            <div class="table-container">
                <div style="margin-bottom: 15px;">
                    <h2>User List</h2>
                </div>

                <table style="width: 100%;" id="user_table">

                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.userId}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td><button name="show_details" 
                                onclick="pageRedirect(${user.userId})">Show Details</button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <!-- <script src="/js/userlist.js"></script> -->

        </body>

        </html>