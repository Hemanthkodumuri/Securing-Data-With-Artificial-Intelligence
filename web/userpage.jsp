<%-- 
    Document   : userpage
    Created on : 1 Mar, 2019, 7:56:38 PM
    Author     : thamarai selvan.d
--%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>

<h2>Unknow user</h2>

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>User Name</th>
     
    </tr>
    <tr>
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
             rs=st.executeQuery("Select name1 from data_");
             while(rs.next())
               {
           
            %>
           
            <td><%=rs.getString(1)%></td>
                              
            <% }                                        
             
           }
           catch(Exception  ex)
             {
               System.out.println(ex.getMessage());
             }
            %>
      
    
    </tr>
   
  </table>
</div>

</body>
</html>
