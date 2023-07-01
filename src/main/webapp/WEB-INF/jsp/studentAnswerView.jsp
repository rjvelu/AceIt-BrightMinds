<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="jakarta.tags.core" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Question View</title>
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

                    <h3>Your Answers</h3>
                    <table border="9px solid black" cellpadding="20">

                        <tr>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Additional Comments</th>
                            <th>Click to Download</th>
                        </tr>


                        <tr>
                            <td>
                                <c:out value="${displayAnsweredToStudent.answeredQuestion}" />
                            </td>
                            <td>
                                <c:out value="${displayAnsweredToStudent.answer}" />
                            </td>
                            <td>
                                <c:out value="${displayAnsweredToStudent.ansComments}" />
                            </td>
                            <td><a href="report.htm?ansPdfId=${displayAnsweredToStudent.answerId}">Generate PDF</a></td>

                        </tr>


                    </table>

                    <form action="returnStudentDashboardPage.htm" method="POST">

                        <br><input class="btn btn-primary" type="submit" value="Return to Dashboard">
                    </form>
                </div>

            </body>

            </html>