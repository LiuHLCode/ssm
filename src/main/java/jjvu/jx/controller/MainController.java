package jjvu.jx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/mainLeft")
	public String left() {
		return "admin/left";
	}

	@RequestMapping("/mainTop")
	public String top() {
		return "admin/top";
	}

	@RequestMapping("/mainMenu")
	public String menu() {
		return "admin/menu";
	}

	@RequestMapping("/mainCenter")
	public String center() {
		return "admin/center";
	}

}
