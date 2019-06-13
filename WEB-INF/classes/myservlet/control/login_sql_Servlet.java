package myservlet.control;
import mybean.data.lab_sql_Bean;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class login_sql_Servlet extends HttpServlet{
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
     String user_id = request.getParameter("user_id");
     String passwd = request.getParameter("passwd");  
     Connection con;
     Statement sql;
     ResultSet rs;
     try{
          String uri="jdbc:mysql://127.0.0.1:3306/"+"labdatabase" +"?useSSL=false&serverTimezone=GMT&characterEncoding=UTF-8&allowPublicKeyRetrieval=true";
          con=DriverManager.getConnection(uri,"root","123456");
          sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                 ResultSet.CONCUR_READ_ONLY);  
          String condition ="SELECT * FROM "+ "labdatabase"+" WHERE user_id = '"+user_id+ "'" +"AND passwd = '"+ passwd + "'"; 
          rs=sql.executeQuery(condition);
		  if(rs.next()!=false){ 
        if(user_id.equals("admin")){   
        request.setAttribute("n", user_id);
        String url = "admin_index.jsp"; 
    //    response.sendRedirect(url);
        request.getRequestDispatcher(url).forward(request, response);
      }
      else{
        request.setAttribute("n", user_id);
        String url = "common_index.jsp"; 
    //    response.sendRedirect(url);
        request.getRequestDispatcher(url).forward(request, response);
      }
      }
			else{
          RequestDispatcher dispatcher=  
          request.getRequestDispatcher("login_error.jsp");
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
