

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Question</title>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
                
        }
        h1 {
            color: #bfe0e2;
            background: linear-gradient(to right, #33ccff 0%, #cc00ff 100%);
        }
        form {
            margin-top: 20px;
        }
        p {
            border: 2px solid black;
            display: inline;
            position: relative;
            /*top: 1.5rem;*/
            padding: 0.5rem 0.2rem;
            border-radius: 15px;
            font-weight: bolder;
            font-size: 1.5rem;
            background: yellow;
            color:red;
            cursor: pointer;
        }
        input[type=submit] {
            padding: 0.5rem 0.2rem;
            border-radius: 1rem;
            font-size: 1.2rem;
            font-weight: bolder;
            background: violet;
            color:red;
        }
    </style>
    <body>
        <div align="center">
            <main>
                <h1>Enter Questions Here</h1>
                <form action="QuestionServlet" method="post">
                    <label>Question</label>: <input type="text" name="question" placeholder="Enter Question" /><br><br>
                    <label>Option A</label>: <input type="text" name="optA" placeholder="Option A"/><br><br>
                    <label>Option B</label>: <input type="text" name="optB" placeholder="Option B"/><br><br>
                    <label>Option C</label>: <input type="text" name="optC" placeholder="Option C"/><br><br>
                    <label>Option D</label>: <input type="text" name="optD" placeholder="Option D"/><br><br>
                    <label>Correct Answer</label>: <input type="text" name="correctAns" placeholder="Correct Answer"/><br><br>
                    <input type="submit" value="Done" />
                    <p id="home">Home</p>
                    <p id="back">Back</p>
                </form>
            </main>
        </div>

        <script>
            let home = document.querySelector("#home");
            let back = document.querySelector("#back");

            home.addEventListener('click', () => {
                window.location.href = "AdminPanel.jsp";
            });
            back.addEventListener('click', () => {
                window.location.href = "ValidateStudent?action=liststudent";
            });
        </script>
    </body>
</html>
