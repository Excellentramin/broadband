package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.UserDao;
import pojo.User;
@Controller
public class UserManageController {	
	@Autowired 
	UserDao userdao;
		@GetMapping("userManage")

		public String toUser(Model model,HttpSession session) {
			
			 if(session.getAttribute("isAdmin")==null) 
					
			{ model.addAttribute("msg3","您不是管理员");
				 return "main";
			}
			 if(!session.getAttribute("isAdmin").equals(1)) 
				
			{ model.addAttribute("msg3","您不是管理员");
				 return "main";
			}
			else {
				/* 验证成功后把数据库的用户保存到list */	
			List<User>list=userdao.getUserList();
			model.addAttribute("list", list);
			return "main"; 
			}
		}

		/* 禁止或解禁用户 */
		  @RequestMapping("update1") 
		  public String upstate(String state,int userId) {
		  userdao.updateState(state, userId); return "forward:userManage"; 
		  }
		  /* 删除用户 */
		  @RequestMapping("delete1") 
		  public String deletete(int userId) {
		  userdao.deleteUser(userId); return "forward:userManage"; }
		  /* 获取要修改的用户的信息 */
		  @RequestMapping("selectuser")
		  public String selectuser(int userId,Model model) {
		  User selectuser=userdao.checkSqlId(userId); 
		  model.addAttribute("selectuser",selectuser);
		  return "forward:userManage"; }

		/* 修改用户 */
		  @RequestMapping("edit1") 
		  public String updateUser(int userId,String userName,String password) {
		  userdao.updateuser(userName,password,userId); 
		  return "forward:userManage"; 
		  }

}
