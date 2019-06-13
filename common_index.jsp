
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*"%>
<%@ page import= "java.io.*"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<link href="css/regular.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<% String user = (String)request.getAttribute("n"); %>
<script language='JavaScript'>
if(user != null)
	alert( '登录成功');
</script>

<style>
	.background-image-holder {
		background: url(05.png) no-repeat center center;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
		height: 100%;
}
	.slide-img{
		background: url('img/lb2.jpg');
	}
</style>
</head>
<body >

<header class="header_top">
	<div class="container">
		<div class="row top-header">

			<ul>
					<%= "当前用户为："+ request.getAttribute("n") %><br/>	
			</ul>
		</div>
	</div>
</header>


<div class="full">
	<div class="container">
		<nav class="navbar navbar-light navstyle">
		  <a class="navbar-brand" href="index.jsp">
			<img src="img/Logo.jpg" width="50" height="30" class="d-inline-block align-top" alt="">
			<span class="ft20">教学实验中心门户</span>
		  </a>
			<ul class="nav">
			  <li class="nav-item">
				<a class="nav-link active navli" href="index.jsp">首页</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link navli" href="news.html">新闻</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link navli" href="inform.html">公告</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link navli"href = "moshi5.html">实验教学</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link navli"href = "moshi1.html">管理模式</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link navli"href = "chengguozhanshi.html">成果展示</a>
			  </li>
			</ul>
		</nav>
	</div>
</div>



<section class="absec">
	<div class="row">

			<div class="col-md-6" style="padding:0;">
				<div id="carouselExampleIndicators"  class="carousel slide" data-ride="carousel">
					  <ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" ></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					  </ol>
					  <div class="carousel-inner">
						<div class="carousel-item active">
						  <img src="img/Carousel1.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
						  <img src="img/Carousel2.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
						  <img src="img/Carousel3.jpg" class="d-block w-100" alt="...">
						</div>
					  </div>
					  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					  </a>
				</div>
			</div>


				<div class="textbox col-md-6" >
					<div class="abstract">
						<h3>中心概况</h3>
					</div>

					<div class="abinfo">
							<p>&nbsp;&nbsp;&nbsp;&nbsp;河海大学计信院创新实验室（Tsinghua University），简称“创新”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;水木清华，钟灵毓秀，清华大学秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神。恰如清华园工字厅内对联所书——“槛外山光，历春夏秋冬、万千变幻，都非凡境；窗中云影，任东西南北、去来澹荡，洵是仙居”。</p>
							<br>
							<a href="chengguozhanshi.html">成果展示</a>
					</div>
				</div>


	</div>
</section>


<!--公告和活��??>

<br><br>
<br>
<!--news-->
<div class="row">
	<div class="col-md-4 l80">
		<div class="textittle">

			<i class="fas fa-comment-dots"></i><span class="mytittle">公告</span><small>gonggao</small>
		</div>
		<%
		 Connection con;
		 Statement sql;
		 ResultSet rs;
		 String news1 = "123";
		 try{
					String uri="jdbc:mysql://127.0.0.1:3306/"+"newsdatabase" +"?useSSL=false&serverTimezone=GMT&characterEncoding=UTF-8";
					con=DriverManager.getConnection(uri,"root","123456");
					sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
					String condition ="SELECT * FROM "+ "newsdatabase"+" WHERE news_id = 'news1' ";
					rs=sql.executeQuery(condition);
					if(rs.next() != false)
						news1 = rs.getString(2);
	}
		 catch(SQLException e){
					System.out.println(e);
		 }
		%>
		<div class="panel panel1">
			<div class="newcontent"><a href="#"><%=news1%><span></span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
		</div>
		<div class="wd60"><a href="inform.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;继续阅读 ></a></div>
	</div>
	<div class="col-md-4">
		<div class="textittle">
			<i class="fas fa-key"></i><span class="mytittle">实验教学</span><small>jiaoxue</small>
		</div>
		<div class="panel panel2">
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">河海大学计算机组成原理设计实践课程学生管理<span>5月7日</span></a></div>
		</div>
		<div class="wd60"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;继续阅读 ></a></div>
	</div>
	<div class="col-md-4 r80">
		<div class="textittle">
			<i class="fas fa-bullhorn"></i><span class="mytittle">管理模式</span><small>moshi</small>
		</div>
		<div class="panel panel3">
			<div class="newcontent"><a href="#">关于2019-2学期本科生公共课程结束考试通知...<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
			<div class="newcontent"><a href="#">校领导调研全日制专硕校外社会化公寓工程进展<span>5月7日</span></a></div>
		</div>
		<div class="wd60"><a href="moshi1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;继续阅读 ></a></div>
	</div>
</div>

<div class="section-title text-center mb-75">
                    <h2最近新闻</h2>
                    <div class="icon-img">
                        <img src="img/headline.png" alt="">
                    </div>
                    <p>来看看最近都发生了什么吧 </p>
 </div>
<div class="more">
	<a href="news.html">
		>>>更多
	</a>
</div>
	<div class="row">
		    <div class="col-md-3 col-sm-3 col-xs-12" align="center">
						<div class="single-service">
							<div class="single-service-icon">
								<a  href="#"><img src="img/news1.jpg" width="250"></a>
							</div>

							<div class="single-service-content">
								<h4><a class="newstittle" href="#"><span class="d-inline-block"  data-toggle="tooltip" title="see more">南有乔木 夕颜凝露</span></h4>
								<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;你们这些人啊，总想搞点大新闻，我更那个华莱士谈笑风生。</p>
								<br><br>

							</div>
						</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-12" align="center">
						<div class="single-service">
							<div class="single-service-icon">
								<a href="#"><img src="img/news2.jpg" width="250"></a>
							</div>

							<div class="single-service-content">
								<h4><a class="newstittle" href="#"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="see more">对酒当歌 人生几何</span></h4>
								<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;你问我支不支持，我当然说支持，但你要问我有没有内定，当然没有，他说的话，你再帮他说一遍，等于你也有责任<p>
								<br>

							</div>
						</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-12" align="center">
						<div class="single-service">
							<div class="single-service-icon">
								<a href="#"><img src="img/news3.jpg" width="250"></a>
							</div>

							<div class="single-service-content">
								<h4><a class="newstittle" href="#"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="see more">高楼望断 情有独钟</span></h4>
								<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;你们这些人啊，总想搞点大新闻，我更那个华莱士谈笑风生。</p>
								<br><br>

							</div>
						</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-12" align="center">
						<div class="single-service">
							<div class="single-service-icon">
								<a href="#"><img src="img/news4.jpg" width="250"></a>
							</div>

							<div class="single-service-content">
								<h4><a class="newstittle" href="#"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="see more">南有乔木 夕颜凝露</span></a></h4>
								<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;你们这些人啊，总想搞点大新闻，我更那个华莱士谈笑风生。</p>
								<br><br>

							</div>
						</div>
			</div>

	</div>


<br><br>
<div class="foot">
	<p>Copyright © 2019.little tian and his xiao huo ban men</p>
</div>

</body>
</html>
