<%-- 
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="BacImages/images6.jpg">
       <center>
<form name="form1" method="post" action="AdminServlet">
    <table width="" border="0">
  <tr>
    <td>
        <div align="center">
        <font size="10" face="Colonna MT"></font>
       </div>
    </td>
  </tr>
</table>
 <table width="270" border="0">
  <tr>
    <td>
    <div align="center"><font size="7" face="Times New Roman" color="CornflowerBlue">Admin Login</font></div>
    </td>
  </tr>
</table>
 <table width="200" border="0">
   <tr>
     <td><div align="center"><font size="6" face="Comic Sans Ms" color="CornflowerBlue">UserName</font></div>
     </td>
     <td><label for="UserName">       
         </label>
       <input type="text" name="adminuser" id="UserName">
       </td>
   </tr>
   <tr>
     <td><div align="center"><font size="6" face="Comic Sans Ms" color="CornflowerBlue">Password</font></div>
     </td>
     <td><label for="Password"></label>
         <input type="password" name="adminpass" id="Password">
       </td>
   </tr>
 </table>
 <table width="200" border="0">
   <tr>
       <td>
           <div align="center">
            <input type="submit" name="Submit" id="Submit" value="Submit">
           </div>
 </td>
   </tr>
 </table>  
 <!--   <table>
      <tr>
          <td>
            <div align="left">
            <img src="Images/admin1.jpg"  height="370" width="500">
            </div>
          </td>
          <td>
    <div align="right">
    <img src="Images/admin2.jpg"  height="370" width="500">
    </div>
          </td>
  </tr>
  </table>   -->
</form>
</center>
    </body>
</html>
