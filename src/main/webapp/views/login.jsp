<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <html>

            <head>
                <title>Login Form</title>
            </head>


            <body>

                <h3>Login</h3>
                <p>
                    Users are created in Database
                </p>

                <form:form action="${pageContext.request.contextPath}/authenticate-user" method="post">


                    <p>
                        Username : <input type="text" name="username" />
                    </p>
                    <p>
                        Password : <input type="password" name="password" />
                    </p>

                    <input type="submit" value="Login" />

                </form:form>

            </body>

            </html>