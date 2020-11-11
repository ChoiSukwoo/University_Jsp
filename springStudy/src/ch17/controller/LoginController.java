package ch17.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ch17.vo.UserVO;

@Controller
@RequestMapping(value="login")
public class LoginController {

	@RequestMapping(method=RequestMethod.GET)
	public String loginForm(Model model) {
		model.addAttribute("userVO", new UserVO());
		return "login";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String onSubmit(@ModelAttribute("userVO") UserVO userVO) {
		System.out.println("onSubmit ���� �޼��� �Դϴ�.");
		return "loginData";
	}
}