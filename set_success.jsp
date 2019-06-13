<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
  <script language='JavaScript'>
  alert('新闻修改成功！');
  </script>
  <%
  request.setAttribute("n", "admin");
  RequestDispatcher dispatcher=
  request.getRequestDispatcher("admin_index.jsp");
  dispatcher.forward(request,response);
  %>
</html>
