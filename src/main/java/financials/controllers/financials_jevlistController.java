package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_jevlistController {
	
	@RequestMapping("financials_jevlist") //url
	public ModelAndView jvl()
	{
		ModelAndView jvl = new ModelAndView();
		jvl.setViewName("GLedger/financials_jevlist");//directory
		return jvl;
	}
}
