
  package controller;
  
  import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Controller; import
  org.springframework.ui.Model; import
  org.springframework.web.bind.annotation.PostMapping; import
  org.springframework.web.bind.annotation.RequestMapping;

import dao.AdminDao;
import dao.UserDao;
import pojo.Admin;
  
  @Controller public class RegisterController {
  
  @Autowired UserDao userdao;
	@Autowired AdminDao admindao;
	
  @RequestMapping("register") public String toRegister()
  { return "register"; }
  
  @PostMapping("register") 
  public String tocheck(String userName,String password1,String password2,String ad,Model model) {
	  pojo.User user=userdao.checkSqlUname(userName);
  if(userName.equals("")) { model.addAttribute("msg1","输入的用户名不能为空"); 
  return "register"; } 
  if(password1.equals("")) 
  {
  model.addAttribute("msg1","输入的密码不能为空"); 
  return "register"; 
  }
  if(password2.equals("")) 
  { model.addAttribute("msg1","输入的确认密码不能为空"); 
  return "register"; } 
  
  if(!password1.equals(password2)) 
  {
  model.addAttribute("msg1","输入密码不一致"); 
  return "register"; }
	if(ad!=null)
	{
		Admin admin=admindao.checkSqlAname(userName);
		if(admin!=null) {
			model.addAttribute("msg1","该管理员已存在");
			return "register";
		}
		 if( admindao.insertSql(userName, password2)==1)
		  {
			 /* 管理员注册成功 */
			 model.addAttribute("msg1","管理员注册成功");
			 return "register";
			 }

	}
	else {
		
		String state = new String("未禁");
		  if(user!=null) {
			  model.addAttribute("msg1","该用户已存在"); 
			  return "register"; } 
		  else if( userdao.insertSql(userName, password2,state)==1)
			  {
					/* 用户注册成功 */
			 model.addAttribute("msg1","用户注册成功");
			 return "register";
			 }
		  
			  } 
	return "register";
		}
  
	}

  
 