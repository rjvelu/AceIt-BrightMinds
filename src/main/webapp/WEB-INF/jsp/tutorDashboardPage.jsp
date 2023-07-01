<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Tutor Dashboard Page</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
                    crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
                    crossorigin="anonymous"></script>

            </head>

            <body>
                <div>

                    <h3>
                        <c:out value="Welcome ${sessionScope.loggedInUser}" />
                    </h3>
                    <h3>
                        <c:out value="You are Registered: ${sessionScope.loggedInUserRole}" />
                    </h3>

                </div>


                <div align="center">



                        <form:form action="tutorQuestionsView.htm" method="POST" modelAttribute="question">
                            <br><input class="btn btn-primary" type="submit" value="Click to Start Answering">
                        </form:form>

                        <form:form action="tutorAnswersView.htm" method="POST" modelAttribute="answer">
                            <br><input class="btn btn-primary" type="submit" value="View Answers">
                        </form:form>

                        <form action="logout.htm" method="GET">
                            <br> <input class="btn btn-primary" type="submit" value="logout">
                        </form>

                </div>

            </body>

            </html>