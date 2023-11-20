

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instruction List</title>
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
        <div class="container">
            <nav><h1>List Of All Instruction</h1></nav>
            <table border="3" cellspacing="10px" cellpadding="10px">
                <thead>
                    <tr>
                        <td>Sr.No</td>
                        <td>Instruction</td>
                        <td>Operation</td>
                        <td>Delete</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="4" class="lastCol" id="addInstruction"><p>Add Instruction</p></td>
                        <td colspan="2" class="lastCol" id="backPanel"><p>Back to Panel</p></td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <!-- Script Tag All JS Code here -->
        <script>
            let addInstruction = document.querySelector("#addInstruction");
            let backPanel = document.querySelector("#backPanel");
            
            addInstruction.addEventListener('click', ()=>{
               window.location.href = "AddInstruction.jsp"; 
            });
            
            backPanel.addEventListener('click', ()=>{
               window.location.href = "AdminPanel.jsp"; 
            });
        </script>
    </body>
</html>
