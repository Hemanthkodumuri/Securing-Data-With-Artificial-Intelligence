
<%@page import="org.bouncycastle.jce.provider.JDKKeyFactory.RSA"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>    
    <body background="BacImages/images5.jpg">
        <center>
            <form action="DeleteServlet" name="form1" id="form1" method="post">
                <br>
                </br>
 <table width="" border="0">
  <tr>
    <td>
        <div align="center">
        <font size="10" face="Colonna MT">File Deletion Page</font>
       </div>
    </td>
  </tr>
</table>
    <p>
    </p>
        <%
       String user=session.getAttribute("username").toString();
        %>
        <div align="left">
            <font size="6" face="Colonna MT">
        <h1>Welcome, <%=user%></h1></font>
        </div>          
        <table width="280" border="0">
        <tr>
          <td width=""><label for="Select a FileName"></label>
            <div align="center"><font size="6" face="Colonna MT">Select a File:</font></div>
          <td width=""><div align="center"></div>
              <div align="center">                  
        <select name="filename">             
            <%      
        HttpSession session1=request.getSession(true); 
       String UserName=session.getAttribute("username").toString();
       String list=session.getAttribute("filename").toString();
       String group=session.getAttribute("group").toString();
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;  
try
{                                       
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","root","password");
             st=con.createStatement();
             rs=st.executeQuery("Select filename from userprofile where groupname='"+group+"'");
             while(rs.next())
               {
           
            %>
            <option> <%=rs.getString("filename")%> </option>
                              
            <% }                                        
             
           }
           catch(Exception  ex)
             {
               System.out.println(ex.getMessage());
             }
            %>
        </select>
              </div></td>
                </td>
            </tr>
        </table>
        <br>
        </br>
            <table>
                <tr>
                    <td>
                        <input type="submit" name="Delete" id="Delete" value="view" >
                    </td>
                </tr>
            </table>
        </form>
        
           <form action="validatedt" name="form1" id="form1" method="post">
                <br>
                </br>
 <table width="" border="0">
  <tr>
    <td>
        <div align="center">
        <font size="10" face="Colonna MT">File Data</font>
       </div>
    </td>
  </tr>
</table>
    <p>
    </p>
        
        <div align="left">
            <font size="6" face="Colonna MT">
       </font>
        </div>          
        <table width="280" border="0">
        <tr>
          <td width="">
            
          <td width=""><div align="center"></div>
              <div align="center">                  
                
            <%      
        
try
{                                       
         if(session.getAttribute("data").toString()==null)
         {
             
         }
         else
         {
           
            %>
            <textarea name="file_id" value="<%=session.getAttribute("data").toString()%>" ><%=session.getAttribute("data").toString()%></textarea>
                              
            
      
              </div></td>
                </td>
            </tr>
        </table>
        <br>
        </br>
            <table>
                <tr>
                    <td>
                        <input type="submit" name="Delete" id="Delete" value="Update" >
                    </td>
                </tr>
            </table>
        <%                                        
         } 
           }
           catch(Exception  ex)
             {
               
             }
            %>
        </form>
        
         
    </center>
    </body>    
</html>
