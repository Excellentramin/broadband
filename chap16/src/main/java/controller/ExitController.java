package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ExitController {
	@RequestMapping("exit")
	public String toexit(HttpSession session) {
		 session.invalidate();
		return "main";
	}
}
