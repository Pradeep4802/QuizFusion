<%-- 
    Document   : AddStudent
    Created on : Nov 16, 2023, 11:40:34 PM
    Author     : pradeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <style>
        .container {

        }

        .details {
            border: 2px solid black;
            width: 25%;
            padding: 4rem 0;
        }

        p {
            border: 2px solid black;
            display: inline;
            position: relative;
            top: 1.5rem;
            padding: 0.5rem 0.2rem;
            border-radius: 15px;
            font-weight: bolder;
            font-size: 1.5rem;
            background: yellow;
            color:red;
            cursor: pointer;
        }
        input[type=submit] {
            padding: 1rem 2rem;
            border-radius: 1rem;
            font-size: 1.2rem;
            font-weight: bolder;
            background: violet;
            color:red;
        }
    </style>
    <body>
        <div class="container" align="center">
            <h1>Student Registration Form</h1>
            <div class="details">
                <form action="ValidateStudent" method="post">
                    Name : <input type="text" name="studentName" placeholder="Enter Name"/><br><br>
                    User id : <input type="text" name="studentId" placeholder="Enter ID"/><br><br>
                    Password: <input type="password" name="studentPass" placeholder="Enter Password"/><br><br>
                    <input type="submit" value="Register"/><br>
                    <p id="home">Home</p>
                    <p id="back">Back</p>
                </form>
            </div>
        </div>

        <script>
            let home = document.querySelector("#home");
            let back = document.querySelector("#back");

            home.addEventListener('click', () => {
                window.location.href = "AdminPanel.jsp";
            });
            back.addEventListener('click', () => {
                window.location.href = "StudentList.jsp";
            });
        </script>
    </body>
</html>
