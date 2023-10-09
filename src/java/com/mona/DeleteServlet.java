/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mona;

import com.commondb.Common_DB;
import static com.mona.DownloadServlet.filename;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Key;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;
import java.util.Scanner;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sentamilpandi.m
 */
public class DeleteServlet extends HttpServlet {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    static Properties properties=new Properties();
    static
    {
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.Fort", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.Fort", "465");
    }
  private static Key generateKey(String keyvalidation) {
         String keyValue=keyvalidation;         
        Key key = new SecretKeySpec(keyValue.getBytes(), "AES");        
        return key;
    }   
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try
        {     
            HttpSession session1=request.getSession();
            String UserName=session1.getAttribute("username").toString();
            String list=session1.getAttribute("filename").toString(); 
            String group=session1.getAttribute("group").toString();
            String fname=request.getParameter("filename");
            String TempDownloadDirectory="D:/temp1/";
            String ln="";
            String key = null;
            try
            {
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","root","password");
             st=con.createStatement();
             rs=st.executeQuery("Select product from groupname where groupname='"+group+"'");
             if(rs.next())
               {
                   key=rs.getString(1);
               }
             
               }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
           
             Key key1 = generateKey(key);
                   // System.out.println(keyvalidation+" ######### "+TempDownloadDirectory+filename+"????? "+group);
                             AESEncrypter Decrypter = new AESEncrypter((SecretKey)key1);
            Decrypter.decrypt(new FileInputStream("D:/"+group+"/"+ fname),new FileOutputStream(TempDownloadDirectory+fname));
            System.out.println("D:/"+group+"/"+fname);
            File ff=new File(TempDownloadDirectory+fname);
            Scanner sc=new Scanner(ff);
            while(sc.hasNextLine())
            {
                ln=ln+sc.nextLine().toString();
            }
            session1.setAttribute("data", ln);
              
//        final String  from="javaredquene@gmail.com";
//      final String password="mona1234";
//      final String to="javaredquene@gmail.com";
//       Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
//         {
//            protected PasswordAuthentication getPasswordAuthentication() {
//            return new PasswordAuthentication(from, password);
//            }});
//       Random generator = new Random();
//                         int r = generator.nextInt(999999);
//                         String ran12=new Integer(r).toString();
//  
//         Message message = new MimeMessage(session);
//         message.setFrom(new InternetAddress(from));
//         message.setRecipients(Message.RecipientType.TO, 
//         InternetAddress.parse(to));
//         message.setSubject("OTP FOR YOU");
//         message.setText("otp for this session is :"+ran12);
//         Transport.send(message);
//         System.out.println("Email Sent SuccessFully"); 
            response.sendRedirect("Delete.jsp");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
