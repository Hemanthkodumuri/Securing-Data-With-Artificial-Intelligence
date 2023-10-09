

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body background="BacImages/images34.jpg">
<center>
<form action="UploadServlet" method="post" name="form1" id="form1" enctype="multipart/form-data">
  <div align="center">  
    <br>
         </br>
           <table width="" border="0">
                <tr>
                    <td>
                        <div align="center">
                            <font size="10" face="Colonna MT">File Upload Page</font></div>
                    </td>
                </tr>
            </table>
           <p>
           </p>
     <%
    String user=session.getAttribute("username").toString();    
    %>
    <div align="left">
        <font size="4" face="Colonna MT">
    <h1>welcome, <%=user%></h1></font>
    </div>
    <p>&nbsp;</p>
    <table width="200" border="0">
      <tr>
        <td><label for="Browse"></label>
          <div align="center">
            <label for="Browse3"></label>
            <input type="file" name="Browse" id="Browse3" />
          </div></td>
      </tr>
    </table>
    <table width="200" border="0">
      <tr>
        <td><div align="center">
          <input type="submit" name="Submit" id="Submit" value="Submit" />          
        </div></td>        
      </tr>
    </table>
    <p>
    </p>
    <table>
      <tr>
          <td>
            <div align="left">
            <img src="Images/upimg.jpg"  height="350" width="1000">
            </div>
          </td>
          </tr>
</table>
  </div>
</form>
</center>
    </body>
</html>
