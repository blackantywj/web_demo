<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<HTML>
<title>
  新闻编辑模块
</title>
<form  action="newssqlServlet" method=post name=form >
    请选择想要编辑的新闻对应id<input type="text" name="news_id" size=5><p></p>
    请选择您想添加的新闻内容<input type="text" name="news" size=50>
    <input type="submit" value="提交" name="submit">
 </form>
</HTML>
