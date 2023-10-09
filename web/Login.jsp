
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="BacImages/images11.jpg">
        <center>
<form name="form1" method="post" action="LoginServlet">    
     <table width="" border="0">
  <tr>
    <td>
        <div align="center">
        <font size="10" face="Colonna MT"></font>
       </div>
    </td>
  </tr>
</table>   
 <table width="250" border="0">      
  <tr>      
    <td>
    <div align="center"><font size="5" face="Times New Roman" color="">Login Page</font></div>
    </td>
  </tr> 
</table>
    <p>
    </p>
 <table width="200" border="0">
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">UserName</font></div>
     </td>
     <td><label for="UserName"></label>
       <input type="text" name="UserName" id="UserName">
       </td>
   </tr>
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">Password</font></div>
     </td>
     <td><label for="Password"></label>
         <input type="password" name="Password" id="Password">
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
</table>
  <p>
      <a href="AdminLogin.jsp"><font size="4" face="Comic Sans Ms">Create a Account</font></a>
  </p>  
 <!-- <table>
      <tr>
          <td>
            <div align="left">
            <img src="Images/login.jpg"  height="370" width="500">
            </div>
          </td>
          <td>
    <div align="right">
    <img src="Images/index.jpg"  height="370" width="500">
    </div>
          </td>
  </tr>
  </table>  -->
  </form>
</center>  
    </body>
</html>
