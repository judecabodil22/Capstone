package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminDashboardController {

	
	@RequestMapping("/admin_dashboard")
	public ModelAndView AdminDashboard()
	{	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Admin/Admin");
		
		
		return mav;
	}
	
	
}
