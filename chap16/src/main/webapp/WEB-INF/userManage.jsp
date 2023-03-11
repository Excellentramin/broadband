<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
   <%--   <%@ page import="java.util.*,pojo.*" %> --%>
   <%@ page import="java.util.*,pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<%-- <table border="2">
		<tr>
			<th>用户号</th>
			<th>用户名</th>
			<th>密码</th>
			<th></th>
			<th>状态</th>
			<th></th>
		</tr>
				<c:forEach items="${users}" var="u">

					<tr>
				<td>${u.ID}</td>
				<td>${u.username}</td>
				<td>${u.password}</td>
				<td><button onclick="window.location.href='banUserServlet?userid=${u.ID}'">禁用</button></td>
				<td>${u.state}</td>
				<td><button onclick="window.location.href='unbanUserServlet?userid=${u.ID}'">解禁</button></td>
				<td><button onclick="window.location.href='orderShowServlet?userid=${u.ID}'">查看该用户的订单</button></td>			
			</tr>
		</c:forEach>
	</table> --%>
	<%-- 			<table border="1">
					<tr>
						<th>UserID</th>
						<th>UserName</th>
						<th>password</th>
						<th>state</th>
						<th>权限设置</th>
	
					</tr>
					<%
						List<User> list=(List<User>)request.getAttribute("list");
						int index=1;
						if(list!=null)
							for(User u:list){ %>
							<tr>
						<td><input type="text"  name="id" value="<%= u.getUserId() %>"  readonly/></td>
						<td><input type="text"  name="userName" value="<%= u.getUserName() %>"/></td>
						<td><input type="text"  name="password" value="<%= u.getPassword() %>"/></td>
						<td><input type="text"  name="state" value="<%= u.getState() %>" readonly/></td>
						<%if(u.getBan()==0) {%>	
								<td><button onclick="close1('<%=u.getUserId() %>')" >禁止访问</button></td>
								<% }%>
							<%if(u.getBan()==1){ %>	
								<td><button onclick="open1('<%=u.getUserId() %>')">开启权限</button></td>
							<%} %>
						<td><button onclick="show()">修改信息</button></td>	
						<td><button onclick="delete1('<%=u.getUserId() %>')">删除用户</button></td>	
					</tr> 
					<%}%>
				
			</table>
			<div class="editWindow">
<h3>修改用户</h3>
<from action="userManage" method="get">
<div class="inputedit">
<input type="text" name="userId" required="" value="${selectuser.userId}">
<label> 用户ID</label>
<div class="inputedit">
<input type="text" name="userName" required="" value="${selectuser.userName}">
<label> 账号名</label>
</div>
<div class="inputedit">
<input type="password" name="password" required="" value="${selectuser.password}">
<label> 密码</label>
<div align="center">
<a><input type="submit" value="修改"></a>
<a><input type="reset" value="关闭" onclick="colse()"></a>
</div>
</div> --%>
</body>
</html>