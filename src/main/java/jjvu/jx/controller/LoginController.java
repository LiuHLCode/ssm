package jjvu.jx.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jjvu.jx.domain.SysUser;
import jjvu.jx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/main")
	public String main() {
		return "admin/admin_index";
	}
	
	@RequestMapping("/tologin")
	public String tologin() {
		return "admin/login";
	}

	@RequestMapping("/login")
	public String login(Model model, HttpSession session, SysUser user) {
		Map map = new HashMap();
		map = userService.findUserByUsername(user);// 判断账号是否存在返回map
		if (map != null && map.size() > 0) {
			model.addAttribute("map", map);
			model.addAttribute("user", user);
			return "admin/login";
		}
		session.setAttribute("USER_SESSION", user);
		// 这里是账号密码没问题去的页面，
		return "redirect:main";
	}
}
