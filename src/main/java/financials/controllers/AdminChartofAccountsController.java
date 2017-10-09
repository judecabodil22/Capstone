package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminChartofAccountsController {

	
	@RequestMapping("admin_CoA")
	public ModelAndView coa()
	{
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("Admin/ChartofAccounts");
		
		return mav;
	}
	
}
