

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "com.pojo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student List</title>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
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
            List<Student> stdlist = (List<Student>) session.getAttribute("stdlist");
            int count = 1;
        %>
        <div class="container">
            <nav><h1>List Of All Student</h1></nav>
            <table border="3" cellspacing="10px" cellpadding="10px">
                <thead>
                    <tr>
                        <th>Sr.No</th>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Password</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>

                    <% for (Student stds : stdlist) {%>
                    <tr style="padding: 15px 10px; background: wheat; font-size: 20px; color: blueviolet;">
                        <td><%= stds.getId() %></td>
                        <td><%= stds.getUserid()%></td>
                        <td><%= stds.getName()%></td>
                        <td><%= stds.getPass()%></td>
                        <td><a href="ValidateStudent?action=edit&&id=<%=stds.getId()%>">Edit</a></td>
                        <td><a href="ValidateStudent?action=delete&&id=<%=stds.getId()%>">Delete</a></td>
                    </tr>
                    <% }%> 
                    <tr>
                        <td colspan="4" class="lastCol" ><p id="addStudent">Add Student</p></td>
                        <td colspan="2" class="lastCol" ><p id="backPanel">Back to Panel</p></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Script Tag All JS Code here -->
        <script>
            let addStudent = document.querySelector("#addStudent");
            let backPanel = document.querySelector("#backPanel");

            addStudent.addEventListener('click', () => {
                window.location.href = "AddStudent.jsp";
            });

            backPanel.addEventListener('click', () => {
                window.location.href = "AdminPanel.jsp";
            });
        </script>
    </body>
</html>
