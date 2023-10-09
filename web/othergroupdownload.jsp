

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
    <body background="BacImages/images28.jpg">
        <form name="form1" method="post" action="DownloadotherServlet">
            <br>
            </br>
    <div align="center">       
      <table width="" border="0">
            <tr>
              <td>
                  <div align="center">
                      <font size="10" face="Colonna MT">Download Other group Files Page</font>
                  </div>
              </td>
            </tr>  
      </table>
        <p>
        </p>
      <p>&nbsp;</p>
      <table width="250" border="0">
        <tr>
          <td width=""><label for="Select a FileName"></label>
            <div align="center"><font size="5" face="Comic Sans Ms">Select a File:</font></div>
          <td width=""><div align="center">
            <select name="filename" >
              <%  
              try
                        {
              HttpSession session1=request.getSession(true);
              String Approved="Approved";
              Connection con=null;
              Statement st=null;
              ResultSet rs=null;
              ArrayList li1=new ArrayList();
           ArrayList li=new ArrayList();
           String UserName=session.getAttribute("username").toString();
           String group=session.getAttribute("group").toString();
           String keyvalidation=request.getParameter("keyvalidaion");
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","password","password");
           st=con.createStatement();
           String qry="select filename,Requestgroup,usercount from othergroup where UserName='"+UserName+"'";
           rs=st.executeQuery(qry);
           System.out.println("JJJJJJJJJJJ"+qry);  
          while(rs.next())            
         {
             int approvecount = Integer.parseInt(rs.getString("usercount"));
             String reqgroupname = rs.getString("Requestgroup");
                String count="select count(*) from login where groupname='"+reqgroupname+"'";
                 Statement st1=con.createStatement();
                ResultSet rs2=st1.executeQuery(count);
           if(rs2.next()) {
               int c = rs2.getInt(1);
           if(approvecount==c){    
             String qry1="select product from groupname where groupname='"+reqgroupname+"'";
             Statement st2=con.createStatement();
             ResultSet rs3=st2.executeQuery(qry1);
              String reqgroup="";
             if(rs3.next())
             {                
                reqgroup=rs3.getString("product");
               System.out.println("HHHHHHHH"+reqgroup);
             }                                                                                                        
          String n=rs.getString(1);              
             li.add(n);
             li1.add(reqgroupname);  
             session1.setAttribute("keyvalidation", reqgroup);    
           }                                 
         }       
                    
            if(!(li.isEmpty()))        
       for(int ij=0; ij<li.size(); ij++)                   
                     {
           %>
           <option value="<%=li.get(ij)%>(<%=li1.get(ij)%>)"> <%=li.get(ij)%>(<%=li1.get(ij)%>)</option>
               <%
                     }
             
                     else {
               
                  
          %>
            <option value=""> </option>
          <%
         }
           }
                     }
           catch(Exception ex)
                           {
               ex.printStackTrace();
                             
 }
%>
            </select>
          </div></td>
        </tr>
      </table>
<!--      <table width="250" border="0">
        <tr>
     <td><div align="center">Enter a Key:</div>
     </td>
     <td><label for="Enter a Key"></label>
       <input type="password" name="keyvalidation" id="keyvalidation">
       </td>
   </tr>
    </table>-->
<p>
</p>
            <table width="200" border="0">
   <tr>
       <td>
           <div align="center">
   <input type="submit" name="Submit" id="Submit" value="Submit">
   
           </div>
   </td>
</table>
      </div> 
            <div align="center">
                <p>
            <a href="download.jsp"><font size="5" face="Comic Sans Ms">Sign Out Here</font></a>
                </p>
            </div>
        </form>
    </body>
</html>
