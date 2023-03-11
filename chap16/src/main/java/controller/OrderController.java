package controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.OrderDao;
import pojo.Customer;
import pojo.Order;
import pojo.User;
@Controller
public class OrderController {
	@Autowired
	OrderDao orderdao;
	@RequestMapping("order")
	public String toOrder(String searchOrder,Model model,HttpSession session) throws ParseException {
		 if(session.getAttribute("userName")==null) 
				
		{ model.addAttribute("msg3","您未登录");
			 return "main";
		}
		 
		 List<Order>list2 =null;
		 if(searchOrder==null) {
			list2 =orderdao.getOrderList();
			/* 把数据库的订单保存在list2 */
				model.addAttribute("list2", list2);
		 }else {
				/* 保存查询到订单 */
			 list2=orderdao.getOrderList1(searchOrder);
				model.addAttribute("list2", list2);
		 }
		 DateFormat dtf=new SimpleDateFormat("yyyy-MM-dd");
		 Date star= new Date();
			long nowtime = star.getTime();/* 现在的系统时间间 */
			/* 保存要提醒的客户的信息 */
		 String res=new String();
			/* 在数据库查询到期时间-现在时间 */
		 for(Order order : list2) {
			 Date end=dtf.parse(order.getDueTime());
				Long endtime = end.getTime();/* 订单要到期的日期 */
				Long day = endtime - nowtime;/* 到期时间 */
			 int days=(int)(day/24/60/60/1000);
			 if(days<29) {//if到期时间到现在<29天
				//获取用户的到期时间信息
				 res=res.concat("/ 用户:"+order.getOrderCus()+"距离到期时间"+days+"天/ ");
			 }
			 
			 
			 session.setAttribute("res",res);//要提醒的用户的到期时间信息存到session
		 }
		
		 model.addAttribute("res", res);
		return "main"; 
	}

	/* 删除订单 */
	  @RequestMapping("deleteOrder") 
	  public String deleteteOrder(int orderId) {
	  orderdao.deleteOrder(orderId); return "forward:order"; }

	/* 修改 订单*/
	  @RequestMapping("editOrder") 
	  public String editOrder(String orderCus,String orderUser,String orderType,int orderId) {
	  orderdao.editOrder(orderCus,orderUser,orderType,orderId); return "forward:order"; }
	  /* 获取要修改的订单的信息 */
	  @RequestMapping("selectOrder")
	  public String selectOrder(int orderId,Model model) {
	  Order selectOrder=orderdao.checkSqlOId(orderId); 
	  model.addAttribute("selectOrder",selectOrder);
	  return "forward:order"; }

	/* 计算某时间段内要缴费的总金额 */
	  @RequestMapping("count")
	  public String Count(String time,String time1,Model model) {
		  List<Order>list2=orderdao.count(time,time1);
		  model.addAttribute("list2",list2);
		  float money=0;
		  for (Order o:list2) {
			  money=money+o.getTotal();
		  }
          model.addAttribute("moneymsg",money);
	  return "forward:order"; }
	  

	  /* 为订单续费 */ 
	  @RequestMapping("renewOrder") 
	  public String renewOrder(int orderId,String dueTime,String orderType,float total) throws ParseException {
		 SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		 Date date=new Date(); 
	   date=dateFormat.parse(dueTime);
	   
	  Calendar calY=Calendar.getInstance();
	  Calendar calM=Calendar.getInstance();
	  calY.setTime(date);
	  calM.setTime(date);
		calY.add(Calendar.YEAR, 1);/* 续费后为订单的到期时间加一年 */
	  calM.add(Calendar.MONTH, 1);/* 续费后为订单的到期时间加一个月 */
	  String dueTimeY=dateFormat.format(calY.getTime());
	  String dueTimeM=dateFormat.format(calM.getTime());
	  if(orderType.equals("包年")) {
			total = total + 300;/* 包年类型的订单续费，费用加300 */
		  orderdao.renewOrder(dueTimeY,total, orderId);
		  return "forward:order"; 
	  }
	  else {
		  total=total+30;/* 包月类型的订单续费，费用加30 */
		  orderdao.renewOrder(dueTimeM,total,orderId);
		  return "forward:order";
	  }
	  
	  }
}

