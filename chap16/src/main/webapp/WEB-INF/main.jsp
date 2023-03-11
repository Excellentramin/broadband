<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

 .headerdiv ul{/*设置导航栏的框框*/
			 	/* margin: 30px auto; */
				 width: 60px;
				 margin-top:150px; 
				 margin-left: -5px ;
				 height: 80px;
				float:left;
				padding: 0px;
				
			}
			.headerdiv li{
				list-style-type: none;
				 text-align:center; 
				/* float: left; */
			}
			.headerdiv a{
				display: block;
				width: 100px;
				height: 50px;
				font-family: Microsoft Yahei;
				line-height: 50px;
				background-color: crimson;
				margin: 0px 0px;
				color: #fff;
				text-align: center;
				text-decoration: none;
				font-size: 15px;
			}
			.headerdiv a:hover{
				background-color: #2f6f4f;
			}
#p1{
width:200px;
color:purple;
}
#p2{

color:purple;
 position:absolute;
top:40px; 
left:7px;
}
.logo{
height:100px;

width:168px;
position:absolute;
top:0;
right:0px;
 background: url("imgaes/首页logo.jpg");
background-size: 100% 100%; 
}
.b{
position:absolute;
top:100px;
left:0;
width:100%;
height:122px;
background-color: rgb(240,255,240);
}
.userManage {
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
position:relative;
height:100%;
width:800px;

margin-top:150px;
margin-left:97px; 

}
.userManage input{
border:none;
 text-align:center; 
 height:50px;
  outline: none;
}
 .userManage button{
 font-size: 18px;

    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
     border-radius: 10px;
 }
.editWindow{
display:none;
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
border-radius: 20px;
width:300px;
 height:300px;
position:fixed;
top:222px;
left:907px;

}
.editWindow input{

    outline: none;
    /*去掉输入框点击后的边框聚焦效果*/
    border-radius: 5px;
    height:32px;
    width: 200px;


}
h3 {
color:purple;
    font-size: 35px;
    text-align: center;
}
h1{
color: purple;
font-size: 35px;
text-align: center;
width: auto;
top: 0;
position: absolute;
left: 40%;
}
.editcusWindow{
display:none;
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
border-radius: 20px;
width:300px;
 height:400px;
position:fixed;
top:220px;
left:950px;

}
.editcusWindow input{

    outline: none;
    /*去掉输入框点击后的边框聚焦效果*/
    border-radius: 5px;
    height:32px;
    width: 200px;


}
.addcusWindow{
display:none;
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
border-radius: 20px;
width:300px;
 height:400px;
position:fixed;
top:220px;
left:950px;

}
.addcusWindow input{

    outline: none;
    /*去掉输入框点击后的边框聚焦效果*/
    border-radius: 5px;
    height:32px;
    width: 200px;


}
.edit input {
    font-size: 20px;
    width: 50px;
    height: 40px;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
    
    color: #fff;
    
    border-radius: 10px;
    /*边框圆角*/
}

.cusManage{
position:relative;
height:100%;
width:850px;
margin-top:150px;
margin-left:95px; 
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);

/* top:222px;
left:105px; */
}

.cusManage input{
border:none;
 text-align:center; 
 height:25px;
  outline: none;
}
.bar1{
width:400px;
height:30px;
position:relative;
top: 15px;
left:300px;

} 
.bar1 input {

width:200px;
height:40px;
border: 2px solid red;
text-align:left;
outline: none;

}
 .bar1 button {
top: 0;
right: 0;
    font-size: 16px;
    width: 50px;
    height: 47px;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
    
    color: #fff;

    border-radius: 10px;
}
 .addcus {
position:relative;
top: -15px;
left:600px;
    font-size: 14px;
    width: 50px;
    height: 50x;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
    
    color: #fff;

    border-radius: 10px;
}
.cusManage button{
font-size: 16px;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
     border-radius: 10px;
  
}
label{
display:inline-block;
min-width:65px;

}
.orderManage{
position:relative;
/* top:100px; */
height:100%;
width:1060px;
margin-top:150px;
margin-left:95px; 
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);

/* top:222px;
left:105px; */
}
.orderManage button{
font-size: 16px;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
     border-radius: 10px;
  
}
.orderManage input{
border:none;
width:120px;
 text-align:center; 
 height:25px;
  outline: none;
}
.bar2{
width:325px;
height:75px;
position:relative;
top: 35px;
left:400px;
} 
.total{
position:relative;
top: -30px;
width:400px;
height:40px;
}
.bar2 input {

width:200px;
height:40px;
border: 2px solid red;
text-align:left;
outline: none;

}
 .bar2 button {
top: 0;
right: 0;
    font-size: 16px;
    width: 50px;
    height: 47px;
    background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
    
    color: #fff;

    border-radius: 10px;
}
 .editOrderWindow{
display:none;
background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
border-radius: 20px;
width:368px;
 height:400px;
position:fixed;
top:220px;
left:1165px;
}
.editOrderWindow input{

    outline: none;
    /*去掉输入框点击后的边框聚焦效果*/
    border-radius: 5px;
    height:32px;
    width: 200px;


} 
.time{
position: relative;
width:300px;
height:40px;
left:750px;
top:-75px;
}
</style>
<script type="text/javascript">
/* 禁止登录事件 */
function ban(userId){
	window.location.href="update1?state="+"已禁"+"&userId="+userId;
}
/* 允许登录事件 */
function unban(userId){
	window.location.href="update1?state="+"未禁"+"&userId="+userId;
} 
/* 修改用户事件事件  */
 function editUser(userId){
	
	window.location.href="selectuser?userId="+userId;
}  
 function close1(){
	 
	document.getElementsByClassName("editWindow")[0].style.display="none";
	
	}  
 function close2(){
	 
		document.getElementsByClassName("editcusWindow")[0].style.display="none";
		
		}  
 function close3(){
	 
		document.getElementsByClassName("addcusWindow")[0].style.display="none";
		
		}  
 function close4(){
	 
		document.getElementsByClassName("editOrderWindow")[0].style.display="none";
		
		}  
 function deleteUser(userId){
	 window.location.href="delete1?userId="+userId;
} 
 function  deleteCus(cusId){
	 window.location.href="deletecus?cusId="+cusId;
} 
 function editCus(cusId){
		
		window.location.href="selectcus?cusId="+cusId;
	}  
 function addCus(){

	 document.getElementsByClassName("addcusWindow")[0].style.display="inline-block";
	 
	
} 
 function renewOrder(orderId,orderType,dueTime,total){
	 
	 window.location.href="renewOrder?orderId="+orderId+"&orderType="+orderType+"&dueTime="+dueTime+"&total="+total;
	
	
	
} 
 window.onload=function(){
	 
		if("${selectuser}"!=""){ 		
			document.getElementsByClassName("editWindow")[0].style.display="inline-block";
		 } 
		
		if("${selectcus}"!=""){ 
			
			document.getElementsByClassName("editcusWindow")[0].style.display="inline-block";
		 } 
		if("${selectOrder}"!=""){ 
			
			document.getElementsByClassName("editOrderWindow")[0].style.display="inline-block";
		 } 
		
			
		
		 
	}
 function  deleteOrder(orderId){
	 window.location.href="deleteOrder?orderId="+orderId;
} 
 function editOrder(orderId){
		
		window.location.href="selectOrder?orderId="+orderId;
	}  
</script>
<body>
<p  id="p1">欢迎${userName}</p></br>
		<p  id="p2"align="center">${msg3}</p>
		
		
		<h1>校园宽带管理系统</h1>
		<div class="logo">
</div>
<div class="b"></div>
<div class="headerdiv">
	<ul >
		<li><a href="login">登录</a></li>
		<li><a href="register">注册</a></li>
		<li><a href="userManage">登录管理</a></li>
		<li><a href="customer">客户管理</a></li>
		<li><a href="order">订单管理</a></li>
		<li><a href="exit">退出</a></li>
	</ul>
</div>

<% List<User> list=(List<User>)request.getAttribute("list");
if(list!=null) {%>
<div class="userManage">

<table border="1"  >
					<tr>
						<th>用户号</th>
						<th>用户名</th>
						<th>密码</th>
						<th>状态</th>
						
 						 
					</tr>
					<%
						
						/* int index=1; */
						
							for(User u:list){ %>
							<tr>
						<td><input type="text"  name="userId" value="<%= u.getUserId() %>"  readonly/></td>
						<td><input type="text"  name="userName" value="<%= u.getUserName() %>"readonly/></td>
						<td><input type="text"  name="password" value="<%= u.getPassword() %>"readonly/></td>
						<td><input type="text"  name="state" value="<%= u.getState() %>" readonly/></td>
						<%if(u.getState().equals("未禁")) {%>	
								<td><button onclick="ban('<%=u.getUserId() %>')" >禁止登录</button></td>
								<% }%>
							<%if(u.getState().equals("已禁")){ %>	
								<td><button onclick="unban('<%=u.getUserId() %>')">允许登录</button></td>
							<%} %> 
						
						<td><button  onclick="editUser('<%=u.getUserId() %>')">修改信息</button></td>	 
						<td><button  onclick="deleteUser('<%=u.getUserId() %>')">删除用户</button></td>	 
					</tr> 
					<%}%>
				
			</table>
		
</div> 

	<%} %>
	
	<% List<Customer> list1=(List<Customer>)request.getAttribute("list1");
if(list1!=null) {%>
<div class="cusManage">

<div class="bar1">
	<form action="searchCus"><input type="text" name="search"  placeholder="请输入客户名搜索"/>
	 <button type="submit">查询</button> 
	
	</form>
</div>

<button class="addcus" onclick="addCus()">添加客户</button>
<table border="1"  >
					<tr>
						<th>客户号</th>
						<th>客户名</th>
						<th>地址</th>
						<th>电话</th>
						
						<th>客户类型</th> 
						
					</tr>
					<%
						
							for(Customer c:list1){ %>
							<tr>
						<td><input type="text"  name="cusID" value="<%= c.getCusId() %>"  readonly/></td>
						<td><input type="text"  name="cusName" value="<%= c.getCusName() %>"readonly/></td>
						<td><input type="text"  name="address" value="<%= c.getAddress() %>"readonly/></td>
						<td><input type="text"  name="cusPhone" value="<%= c.getCusPhone() %>"readonly/></td>
						<td><input type="text"  name="cusType" value="<%= c.getCusType() %>" readonly/></td>
						<td><button onclick="editCus('<%=c.getCusId() %>')">修改</button></td>
						<td><button onclick="deleteCus('<%=c.getCusId() %>')">删除</button></td>

					</tr> 
					<%}%>
				
			</table>
		
</div>  
	<%} %> 
	<% List<Order> list2=(List<Order>)request.getAttribute("list2");
 if(list2!=null) {%> 

<div class="orderManage">

<div class="bar2">
	<form action="order"><input type="text" name="searchOrder"  placeholder="请输入客户名搜索"/>
	 <button type="submit">查询</button> 
	 
	</form>

</div> 
<div class="total">
	<form action="count" method="get">
	<input type="date" name="time">
	<input type="date" name="time1">
	<button type="submit">统计</button>
	</form>
<p  >缴费总金额：${moneymsg}</p>
<div class="time"><marquee >${res}</marquee></div>
</div>
<table border="1"  >
					<tr>
						<th>订单号</th>
						<th>客户名</th>
						<th>经办人</th>
						<th>缴费日期</th>
						<th>到期日期</th>
						<th>缴费类型</th> 
						<th>费用</th> 
					</tr>
					<%
						
							for(Order o:list2){ %>
							<tr>
						<td><input type="text"  name="orderId" value="<%= o.getOrderId() %>"  readonly/></td>
						<td><input type="text"  name="orderCus" value="<%= o.getOrderCus() %>"readonly/></td>
						<td><input type="text"  name="orderUser" value="<%= o.getOrderUser() %>"readonly/></td>
						<td><input type="text"  name="orderTime" value="<%= o.getOrderTime() %>"readonly/></td>
						<td><input type="text"  name="dueTime" value="<%= o.getDueTime() %>" readonly/></td>
						<td><input type="text"  name="orderType" value="<%= o.getOrderType() %>" readonly/></td>
						<td><input type="text"  name="total" value="<%= o.getTotal() %>" readonly/></td>
						<td><button onclick="renewOrder('<%=o.getOrderId() %>','<%= o.getOrderType()%>','<%= o.getDueTime()%>','<%= o.getTotal()%>')">续费</button></td>
						<td><button onclick="editOrder('<%=o.getOrderId() %>')">修改</button></td>
						<td><button onclick="deleteOrder('<%=o.getOrderId() %>')">删除</button></td>

					</tr> 
					<%}%>
				
			</table>
		
</div>  
	 <%} %>    
<div class="editcusWindow">
<h3>修改客户</h3>

<form action="editcus" method="get">

<div >
<label > 客户ID</label>
<input  type="text" name="cusId" required="" value="${selectcus.cusId}"readonly>
</div>
<div class="inputedit">
<label  > 账号名</label>
<input  type="text" name="cusName" required="" value="${selectcus.cusName}">
</div>

<div >
<label > 地址</label>

<input   type="text" name="address" required="" value="${selectcus.address}">
</div>

<div>
<label > 电话</label>
<input type="text" name="cusPhone" required="" value="${selectcus.cusPhone}">
</div>

<div>
<label > 客户类型</label>
<select  size="1" name="cusType">
<option   value="包年">包年</option>
<option   value="包月">包月</option>
</select>
<%-- <input type="text" name="cusType" required="" value="${selectcus.cusType}"> --%>
</div>
<div align="center">
<span class="edit"><input type="submit" value="修改" ></span>
<span class="edit"><input type="reset" value="关闭" onclick="close2()"></span>
</div>
</form>
</div>
<div class="editOrderWindow">
<h3>修改订单</h3>

<form action="editOrder" method="get">

<div >
<label > 客户ID</label>
<input  type="text" name="orderId" required="" value="${selectOrder.orderId}"readonly>
</div>
<div class="inputedit">
<label  > 客户名</label>
<input  type="text" name="orderCus" required="" value="${selectOrder.orderCus}">
</div>
<div class="inputedit">
<label  > 经办人</label>
<input  type="text" name="orderUser" required="" value="${selectOrder.orderUser}">
</div>
<div>
<label > 客户类型</label>
<select  size="1" name="orderType">
<option   value="包年">包年</option>
<option   value="包月">包月</option>
</select>

</div>
<div align="center">
<span class="edit"><input type="submit" value="修改" ></span>
<span class="edit"><input type="reset" value="关闭" onclick="close4()"></span>
</div>
</form>
</div>

   <div class="addcusWindow">
<h3>添加客户</h3>

<form action="addcus" method="get">
<%-- 
<div >
<label > 客户ID</label>
<input  type="text" name="cusId" required="" value="${selectcus.cusId}"readonly>
</div> --%>
<div class="inputedit">
<label  > 客户名</label>
<input  type="text" name="cusName" required="" >
</div>

<div >
<label > 地址</label>

<input   type="text" name="address" required="" ">
</div>

<div>
<label > 电话</label>
<input type="text" name="cusPhone" required="" ">
</div>

<div>
<label > 客户类型</label>
<select  size="1" name="cusType">
<option   value="包年">包年</option>
<option   value="包月">包月</option>
</select>
</div>
<div align="center">
<span class="edit"><input type="submit" value="添加" ></span>
<span class="edit"><input type="reset" value="关闭" onclick="close3()"></span>
</div>
</form>
</div>
<div class="editWindow">
<h3>修改用户</h3>

<form action="edit1" method="get">

<div class="inputedit">
<label> 用户ID</label>
<input type="text" name="userId" required="" value="${selectuser.userId}"readonly>

<div class="inputedit">
<label> 账号名</label>
<input type="text" name="userName" required="" value="${selectuser.userName}">

</div>
<div class="inputedit">
<label> 密码</label>
<input type="password" name="password" required="" value="${selectuser.password}">

<div align="center">
<span class="edit"><input type="submit" value="修改" ></span>
<span class="edit"><input type="reset" value="关闭" onclick="close1()"></span>
</div>
</form>
</div>

</html>