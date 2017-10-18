package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_create_apController {
	
	@RequestMapping("/APC")//url
	public ModelAndView fapc()
	{
		ModelAndView apc = new ModelAndView();
		apc.setViewName("AP_AR/financials_create_ap");
		return apc;
	}

}
