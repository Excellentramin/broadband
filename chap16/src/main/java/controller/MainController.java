package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.UserDao;
import pojo.User;


@Controller
public class MainController {	
	
	/*
	 * @Autowired UserDao userdao;
	 */
		
		/*
		 * @GetMapping("main")
		 * 
		 * public String toMain() { return "main"; }
		 * 
		 * public String toUser(Model model) { List<User>list=userdao.getUserList();
		 * model.addAttribute("list", list); return "main"; }
		 */

		/*
		 * @RequestMapping("update1") public String upstate(String state,int userId) {
		 * userdao.updateState(state, userId); return "main"; }
		 */
 
}
