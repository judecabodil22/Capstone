package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_disbursementController {
	
	@RequestMapping("financials_createdisb") //url
	public ModelAndView disb()
	{
		ModelAndView fcd = new ModelAndView();
		fcd.setViewName("Disbursement/financials_disbursement"); //directory
		return fcd;
	}

}






