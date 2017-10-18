package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_ManageUsersController {
	
	@RequestMapping("financials_manageusers") //url
	public ModelAndView fcj()
	{
		ModelAndView cjev = new ModelAndView();
		cjev.setViewName("financials_ManageUsers");//jsp file
		return cjev;
	}
}
