package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_rjevController {
	
	@RequestMapping("financials_reviewjev") //url
	public ModelAndView frj()
	{
		ModelAndView rjev = new ModelAndView();
		rjev.setViewName("GLedger/financials_rjev");//
		return rjev;
	}
}
