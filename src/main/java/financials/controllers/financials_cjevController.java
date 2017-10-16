package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_cjevController {
	
	@RequestMapping("financials_createjev") //url
	public ModelAndView fdash()
	{
		ModelAndView fd = new ModelAndView();
		fd.setViewName("GLedger/financials_cjev");//
		return fd;
	}
}

