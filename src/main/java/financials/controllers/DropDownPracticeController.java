package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DropDownPracticeController {

	
	@RequestMapping("dropdown")
	public ModelAndView mav()
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Admin/DropDown");
		
		return mav;
	}
	
}
