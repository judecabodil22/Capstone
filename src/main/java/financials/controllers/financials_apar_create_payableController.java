package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_apar_create_payableController {
	@RequestMapping("create_ap")//url
	public ModelAndView fapc()
	{
		ModelAndView apc = new ModelAndView();
		apc.setViewName("AP_AR/apar_create_ap");
		return apc;
	}
}
