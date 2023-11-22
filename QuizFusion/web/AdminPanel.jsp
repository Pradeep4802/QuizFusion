

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        marquee {
            background: linear-gradient(to right, #ff66ff 0%, #3366ff 100%);
            padding: 30px 0;
            font-size: 3rem;
        }
        .main-card {
            border: 2px solid black;
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
            background: #ccccff;
        }
        p{
            border: 2px solid black;
            font-size: 30px;
            margin: 20px 30px;
            padding: 20px 30px;
            border-radius: 20px;
            background: linear-gradient(to bottom, #ffff99 0%, #66ff66 100%);
            transition: 0.7s;
            cursor: pointer;
            font-weight: bold;
        }
        p:hover {
            background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
        }
    </style>

    <body>
        <div>
            <h1><marquee>Welcome Admin</marquee></h1>
            <div class="main-card">
                <p id="add-student">Add/Update Student</p>
                <p id="add-instruct">Add/Update Instructions</p>
                <p id="add-question">Add/Update Question</p>
                <p id="logout">Logout</p>
            </div>
        </div>
        
        <script>
            let addStudent = document.getElementById("add-student");
            let addInstruct = document.getElementById("add-instruct");
            let addQuestion = document.getElementById("add-question");
            let logout = document.getElementById("logout");
            console.log("Success");
            addStudent.addEventListener('click', studentList);
            addInstruct.addEventListener('click', instructList);
            addQuestion.addEventListener('click', questionList);
            console.log("Failure");
            
            function studentList() {
                window.location.href = "ValidateStudent?action=liststudent";
            }
            
            function instructList() {
                window.location.href = "InstructionServlet?action=listinstruct";
            }
            
            function questionList() {
                window.location.href = "QuestionServlet?action=listquestion";
            }
        </script>
    </body>
</html>
