<%-- 
    Document   : AddInstruction
    Created on : Nov 17, 2023, 4:36:27 PM
    Author     : pradeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Instruction</title>
    </head>
    <body>
        <div align="center">
            <h1>Enter Instruction Here....</h1>
            <form action="InstructionServlet" method="post">
                Enter Instruction : <input type="text" name="instruct" placeholder="Enter Instruction..."/>
                <input type="submit" value="Add"/>
                <p id="home">Home</p>
                <p id="back">Back</p>
            </form>
        </div>
        <script>
            let home = document.querySelector("#home");
            let back = document.querySelector("#back");

            home.addEventListener('click', () => {
                window.location.href = "AdminPanel.jsp";
            });
            back.addEventListener('click', () => {
                window.location.href = "InstructionList.jsp";
            });
        </script>
    </body>
</html>
