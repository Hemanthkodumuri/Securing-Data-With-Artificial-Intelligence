


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
    <body background="BacImages/images9.jpg">
        <center>
<form name="form1" method="post" action="RegServlet">    
 <table width="" border="0">
  <tr>
    <td>
        <div align="center">
        <font size="10" face="Colonna MT">User Registration Details</font>
       </div>
    </td>
  </tr>
</table>
 <table width="360" border="0">
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">UserName</font></div></td>
     <td><label for="UserName"></label>
       <input type="text" name="reguser" id="UserName">
       </td>
   </tr>
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">Password</font></div></td>
     <td><label for="Password">
             <input type="password" name="regpass" id="Password">
     </label></td>
   </tr>
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">Confirm Password</font></div></td>
     <td><label for="ConPassword"></label>
       <input type="password" name="ConPassword" id="ConPassword"></td>
   </tr>
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">Email</font></div></td>
     <td><label for="EmailID"></label>
       <input type="text" name="regemail" id="EmailID"></td>
   </tr>
   <tr>
     <td><div align="center"><font size="5" face="Comic Sans Ms">Group Name</font></div></td>
     <td><label for="Groupname"></label>         
       <select name="groupname" >    
           <%  
           ArrayList li=new ArrayList();
            ResultSet rr=Common_DB.ViewTable("mona","groupname");
          
         while(rr.next())            
         {
          String n=rr.getString(1);   
           
             li.add(n);             
         }
            if(!(li.isEmpty()))        
       for(int ij=0; ij<li.size(); ij++)                   
                     {
           %>
           <option value="<%=li.get(ij)%>"> <%=li.get(ij)%></option>
               <%
                     }
             
                     else {
               
                  
          %>
            <option value=""> </option>
          <%
         }
%>
          
       </select>  
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
<table>
      <tr>
          <td>
            <div align="left">
            <img src="Images/reg.jpg"  height="350" width="1000">
            </div>
          </td>
          </tr>
</table>
</form>
</center>
    </body>
</html>
