package jjvu.jx.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jjvu.jx.domain.SysUser;
import jjvu.jx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.security.RolesAllowed;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RolesAllowed({"ROLE_ADMIN"})//JSR-250 注解
	@RequestMapping(value = "/ManageUser")
	public String manageUser(Model model){
		List<SysUser> list= userService.findAllUser();
		model.addAttribute("list", list);
		return "admin/manageUser";
	}
	@RequestMapping(value="/addUser")
	public String addUser(SysUser sysuser,Model model){
		Map map = new HashMap();
		map = userService.addUser(sysuser);
		if(map != null && map.size() > 0) {
			model.addAttribute("map", map);
			model.addAttribute("User", sysuser);
			return "forward:ManageUser";
		}
		return "redirect:ManageUser";
	}
	@RequestMapping(value = "/deleteUser")
	public String deleteUser(Integer uid){
		userService.deleteUser(uid);
		return "redirect:ManageUser";
	}
	@RequestMapping(value="/editUser")
	public String toEditUser(Integer u_id,Model model){
		SysUser user=userService.findUserById(u_id);
		model.addAttribute("user1", user);
		return "admin/editUser";
	}
	@RequestMapping(value="/editUsers")
	public String editUser(SysUser user,Model model){
		Map map =  new HashMap();
		map = userService.editUser(user);
		if(map != null && map.size() > 0){
			model.addAttribute("user1", user);
			model.addAttribute("map", map);
			return "admin/editUser";
		}
		return "redirect:ManageUser";
	}

}
