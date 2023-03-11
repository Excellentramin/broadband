package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CusDao;
import dao.OrderDao;
import pojo.Customer;
import pojo.User;

@Controller
public class CusController {
	@Autowired
	CusDao cusdao;
	@Autowired
	OrderDao orderdao;
	@GetMapping("customer")
	public String toCustomer(Model model,HttpSession session) {
		 if(session.getAttribute("userName")==null) 
				
		{ model.addAttribute("msg3","您未登录");
			 return "main";
		}
		 /* 验证成功后把数据库的Customer保存到list1 */	
		List<Customer>list1=cusdao.getCusList();
		model.addAttribute("list1", list1);
		return "main"; 
	}
	/* 把查询到的客户保存到list1 */	
	@RequestMapping("searchCus")
	public String toCustomer1(Model model,String search) {
		List<Customer>list1=cusdao.getCusList1(search);
		model.addAttribute("list1", list1);
		return "main"; 
	}
	/* 删除客户*/	
	  @RequestMapping("deletecus") 
	  public String deletete(int cusId) {
	  cusdao.deleteCus(cusId); return "forward:customer"; }
	  /* 获取要修改的客户的信息*/
	  @RequestMapping("selectcus")
	  public String selectcus(int cusId,Model model) {
	  Customer selectcus=cusdao.checkSqlcusId(cusId); 
	  model.addAttribute("selectcus",selectcus);
	  return "forward:customer"; }
	  
	  /* 修改客户*/
	  @RequestMapping("editcus") 
	  public String updateCus(String cusName,String address,String cusPhone,String cusType,int cusId) {
	  cusdao.updatecus(cusName,address,cusPhone,cusType,cusId); 
	  return "forward:customer"; 
	  }

	  /* 添加客户后即添加一条订单*/
	  @RequestMapping("addcus") 
	  public String addCus(String cusName,String address,String cusPhone,String user,String cusType,HttpSession session) {
		  /* 添加客户*/
	cusdao.addcus(cusName,address,cusPhone,cusType); 
	/* 添加订单*/
	  String userName=(String) session.getAttribute("userName");
	  Date date=new Date();
		SimpleDateFormat ot=new SimpleDateFormat("yyyy/MM/dd");//设置订单时间
		
		String orderTime=ot.format(date);
		
		Calendar m=Calendar.getInstance();
		Calendar y=Calendar.getInstance();
		m.add(Calendar.MONTH, 1);/* 到期时间为1月后*/
		y.add(Calendar.YEAR, 1);/* 到期时间为1年后*/
		String mduedate=ot.format(m.getTime());
		String yduedate=ot.format(y.getTime());
		if(cusType.equals("包年")) {
			float total=300;/* 包年费用为300*/
			orderdao. addorder(cusName,userName,orderTime,yduedate,cusType,total);
		}
		else {
			float total=30;/* 包月费用为30*/
			orderdao. addorder(cusName,userName,orderTime,mduedate,cusType,total);
		}
	  return "forward:customer"; 
	  }
	  
}
