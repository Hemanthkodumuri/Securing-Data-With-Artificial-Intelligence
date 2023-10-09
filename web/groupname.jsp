

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="BacImages/images13.jpg">
        <center>
        <form name="form1" method="post" action="GroupnameServlet">
            <p>
            </p>
            <p>
            </p>
            <br>
            </br>
            <table width="" border="0">
                <tr>
                    <td>
                        <div align="center">
                            <font size="10" face="Colonna MT">GroupName Registration</font></div>
                    </td>
                </tr>
            </table>
            <br>
            </br>
            
            <table width="250" border="0">
                <tr>                    
                    <td>
                        <div align="center"><div align="center"><font size="5" face="Comic Sans Ms">GroupName:</font></div>
                    </td>
                        <td>
                            <label width="100" for="groupname"></label>
                           <input type="text" name="groupname" id="group">
                       </td>
                </tr>                       
                <tr>
                    <td>
                        <div align="center"><div align="center"><font size="5" face="Comic Sans Ms">GroupKey:</font></div>
                    </td>
                    <td>
                        <label width="100"for="key"></label>
                        <input type="text" name="key" id="key">
                    </td>
                </tr>                
            </table>
            <table>
                <tr>
                    <td>
                        <div align="center">
                            <input type="submit" name="submit" id="submit" value="submit">
                        </div>
                    </td>
                </tr>
            </table>
            <table>
      <tr>
          <td>
            <div align="left">
            <img src="Images/greg.jpg"  height="350" width="1000">
            </div>
          </td>
          </tr>
</table>
        </form>
        </center>
    </body>
</html>
