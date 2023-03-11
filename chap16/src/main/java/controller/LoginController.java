package controller;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AdminDao;
import dao.OrderDao;
import dao.UserDao;
import pojo.Admin;
@Controller

public class LoginController {
	@Autowired
	UserDao userdao;
	@Autowired
	AdminDao admindao;
	@Autowired
	OrderDao orderdao;
	
	
	 @RequestMapping("login") public String toLogin() { return "login"; }
	 
	@PostMapping("login")
	public String tocheck(String userName,String password,String ad,Model model,HttpSession session,String state) {
		pojo.User user=userdao.checkSqlUname(userName);
		pojo.User user1=userdao.checkSqlState(userName);
		if(userName.equals("")) {
			model.addAttribute("msg","输入的用户名不能为空");
			return "login";
		}
		if(password.equals("")) {
			model.addAttribute("msg","输入的密码不能为空");
			return "login";
		}	
		
		if(ad!=null)
		{
			Admin admin=admindao.checkSqlAname(userName);
			if(admin==null) {
				model.addAttribute("msg","该管理员不存在");
				return "login";
			}
			else if(!admin.getPassword().equals(password)) {
				model.addAttribute("msg","输入的密码错误");
				return "login";
			}
			else
			{
				/* 管理员登陆成功 */
				
				 session.setAttribute("userName","管理员："+userName);
				 session.setAttribute("isAdmin",1);
			return "main";
			}
		}
		else {
			 if(userdao.checkSqlUname(userName)==null) {
				 model.addAttribute("msg","该用户不存在");
				 return "login"; }
			 if(user1.getState().equals("已禁")) {
				 model.addAttribute("msg","该用户已被禁止登录");
				 return "login"; }

			 else if(!user.getPassword().equals(password)) {
				 model.addAttribute("msg","输入的密码错误"); 
				 return "login"; }
			  else {
					/* 用户登陆成功 */
				  session.setAttribute("userName","用户："+userName);
				  session.setAttribute("isAdmin",0);
				  return "main";}
		}
		
		
		 
	}
	
	
}
