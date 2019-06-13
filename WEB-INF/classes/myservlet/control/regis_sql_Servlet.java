package myservlet.control;
import mybean.data.lab_sql_Bean;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.sun.mail.util.MailSSLSocketFactory;
public class regis_sql_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public static void sendMail(String to)
             throws GeneralSecurityException, MessagingException {
         Properties props = new Properties();  
         props.setProperty("mail.smtp.auth", "true");  
         props.setProperty("mail.host", "smtp.qq.com"); 
         props.setProperty("mail.transport.protocol", "smtp");   
         MailSSLSocketFactory sf = new MailSSLSocketFactory();
         sf.setTrustAllHosts(true);
         props.put("mail.smtp.ssl.enable", "true");
         props.put("mail.smtp.ssl.socketFactory", sf);
         Session session = Session.getInstance(props);
         Message msg = new MimeMessage(session);
         msg.setSubject("Thanks,register success!");
         msg.setContent(
                 "<a href='http://localhost:8000/fish/success.jsp'>","text/html;charset=UTF-8");
         msg.setFrom(new InternetAddress("1530360690@qq.com"));
         Transport transport = session.getTransport();
         transport.connect("smtp.qq.com", "1530360690@qq.com",
                 "lxgmkkpvigqcfjcf");
         transport.sendMessage(msg, new Address[] { new InternetAddress(to) }); 
         transport.close(); 
     }

   public void doPost(HttpServletRequest request,HttpServletResponse response)  //Post方法
               throws ServletException,IOException{
                 request.setCharacterEncoding("utf-8");
      lab_sql_Bean resultBean=null;
      try{  resultBean=(lab_sql_Bean)request.getAttribute("resultBean");
            if(resultBean==null){
                resultBean=new lab_sql_Bean();
                request.setAttribute("resultBean",resultBean);
            }
      }
      catch(Exception exp){
            resultBean=new lab_sql_Bean();
            request.setAttribute("resultBean",resultBean);
      }
     try{  Class.forName("com.mysql.cj.jdbc.Driver");
     }
     catch(Exception e){}
     String user_id = request.getParameter("user_id");  
          String number = request.getParameter("number");
     String real_name = request.getParameter("real_name");
     String passwd = request.getParameter("passwd");
     String gender = request.getParameter("gender");
     String email = request.getParameter("email");
     String phone = request.getParameter("phone");
     String image = request.getParameter("image");
     String favor = request.getParameter("favor");
     FileInputStream str=new FileInputStream("D://ywjthh//WEB-INF//classes//myservlet//control//"+image); 
     Connection con;
	   PreparedStatement sql1;
     Statement sql;
     ResultSet rs;
     try{
          String uri="jdbc:mysql://127.0.0.1:3306/"+"labdatabase" +"?useSSL=false&serverTimezone=GMT&characterEncoding=UTF-8&allowPublicKeyRetrieval=true";
          con=DriverManager.getConnection(uri,"root","123456");
          sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
          String condition ="SELECT * FROM "+ "labdatabase"+" WHERE user_id = '"+user_id+"'";    
          String command="Insert into labdatabase(user_id,number, real_name,passwd,gender,email,phone,image,favor) values(?,?,?,?,?,?,?,?,?)"; 
          sql1=con.prepareStatement(command);
          rs=sql.executeQuery(condition);
          if(rs.next()==false){
		      sql1.setString(1, user_id);
          sql1.setString(2, number);
		      sql1.setString(3, real_name);
		      sql1.setString(4, passwd);
     	    sql1.setString(5, gender);
          sql1.setString(6, email);
          sql1.setString(7, phone);
          sql1.setBinaryStream(8,str,str.available()); 
          sql1.setString(9, favor);
		      sql1.executeUpdate();
          con.close();
          try{
          sendMail(email);
          RequestDispatcher dispatcher=
          request.getRequestDispatcher("login.jsp"); 
          dispatcher.forward(request,response);		  
        }catch(GeneralSecurityException e){
          e.printStackTrace();
        }catch(MessagingException e){
          e.printStackTrace();
        }
        }
        else{
          RequestDispatcher dispatcher=
          request.getRequestDispatcher("regis_error.jsp");
          dispatcher.forward(request,response);
        }
     }
     catch(SQLException e){
          System.out.println(e);
     }
   }
   public  void  doGet(HttpServletRequest request,HttpServletResponse response)
           throws ServletException,IOException{
       doPost(request,response);  
   }
}
