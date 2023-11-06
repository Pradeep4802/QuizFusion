<%-- 
    Document   : StudentList
    Created on : Nov 6, 2023, 6:20:28 PM
    Author     : pradeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            width: 100%;
        }
    </style>
    <body>
        <div class="container">
            <nav><h1>List Of All Student</h1></nav>
            <table border="3" cellspacing="10px" cellpadding="10px">
                <thead>
                    <tr>
                        <td>Sr.No</td>
                        <td>UserID</td>
                        <td>Name</td>
                        <td>Password</td>
                        <td>Update</td>
                        <td>Delete</td>
                    </tr>
                </thead>
            </table>
        </div>
    </body>
</html>
