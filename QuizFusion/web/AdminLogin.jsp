<%-- 
    Document   : AdminLogin
    Created on : Nov 4, 2023, 4:14:47 PM
    Author     : pradeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <h1>Admin Login</h1>
            <form action="ValidateAdmin" method="POST">
                <table border="3" cellspacing="10px" cellpadding="10px" style="border-collapse: collapse;">

                    <tr>
                        <th>Username: </th>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    
                    <tr>
                        <th>Password: </th>
                        <td><input type="text" name="password" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><button>Exit</button></td>
                    </tr>

                </table>
            </form>
        </div>
    </body>
</html>
