package myservlet.control;
import mybean.data.lab_sql_Bean;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class news_sql_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
               throws ServletException,IOException{
      lab_sql_Bean resultBean = null;
      try
      {  resultBean=(lab_sql_Bean)request.getAttribute("resultBean");
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
       request.setCharacterEncoding("UTF-8");  
     String news_id = request.getParameter("news_id");
      String news = request.getParameter("news");
     Connection con;
      Statement sql;
      PreparedStatement sql1;
     ResultSet rs;
     try{
          String uri="jdbc:mysql://127.0.0.1:3306/"+"newsdatabase" +"?useSSL=false&serverTimezone=GMT&characterEncoding=UTF-8&allowPublicKeyRetrieval=true";
          con=DriverManager.getConnection(uri,"root","123456");
          sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);  
          String condition ="update newsdatabase set news = '"+  news  + "'" + " WHERE news_id = '" + news_id + "'";  
          sql.executeUpdate(condition);
               RequestDispatcher dispatcher=
               request.getRequestDispatcher("set_success.jsp"); 
               dispatcher.forward(request,response);
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
