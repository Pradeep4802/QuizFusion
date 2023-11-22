

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "com.pojo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question list</title>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {

        }

        nav {
            height: 60px;

        }

        h1 {
            position: relative;
            top: 25%;
            left: 40%;
            font-size: 33px;
            font-weight: bold;
        }

        nav {
            background: linear-gradient(to right, #ff99ff, #8fadff, #26e640);
        }

        table {
            border-collapse: collapse;
            text-align: center;
            width: 100%;
        }

        thead {
            font-weight: bolder;
            font-size: 2.1rem;
        }

        .lastCol {

        }

        p {
            border: 2px solid black;
            width: 35%;
            font-weight: bolder;
            font-size: 1.6rem;
            padding: 20px 0;
            border-radius: 60px;
            background: yellow;
            color: red;
            cursor: pointer;
        }
    </style>
    <body>
        <%
            List<Question> listquestion = (List<Question>) session.getAttribute("listquestion");
        %>
        <div class="container">
            <nav><h1>List Of All Question</h1></nav>
            <table border="3" cellspacing="10px" cellpadding="10px">
                <thead>
                    <tr>
                        <th>Sr.No</th>
                        <th>Question</th>
                        <th>Opt A</th>
                        <th>Opt B</th>
                        <th>Opt C</th>
                        <th>Opt D</th>
                        <th>Correct Ans</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Question ques : listquestion) {%>
                    <tr style="padding: 15px 10px; background: wheat; font-size: 20px; color: blueviolet;">
                        <td><%= ques.getId() %></td>
                        <td><%= ques.getQuestion() %></td>
                        <td><%= ques.getOpta()%></td>
                        <td><%= ques.getOptb()%></td>
                        <td><%= ques.getOptc()%></td>
                        <td><%= ques.getOptd()%></td>
                        <td><%= ques.getCorrectans()%></td>
                        <td><a href="QuestionServlet?action=edit&&id=<%=ques.getId()%>">Edit</a></td>
                        <td><a href="QuestionServlet?action=delete&&id=<%=ques.getId()%>">Delete</a></td>
                    </tr>
                    <% }%> 

                    <tr>
                        <td colspan="5" class="lastCol" ><p id="addQuestion">Add Question</p></td>
                        <td align="right" colspan="4" class="lastCol" ><p align="center" id="backPanel">Back to Panel</p></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Script Tag All JS Code here -->
        <script>
            let addQuestion = document.querySelector("#addQuestion");
            let backPanel = document.querySelector("#backPanel");

            addQuestion.addEventListener('click', () => {
                window.location.href = "AddQuestion.jsp";
            });

            backPanel.addEventListener('click', () => {
                window.location.href = "AdminPanel.jsp";
            });
        </script>
    </body>
</html>
