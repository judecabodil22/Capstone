package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReportsUnadjustedTB {
	
	@RequestMapping("financials_unadjustedtb") //url
	public ModelAndView fcj()
	{
		ModelAndView cjev = new ModelAndView();
		cjev.setViewName("Reports/Trial Balance/Unadjusted");//jsp file
		return cjev;
	}
}
