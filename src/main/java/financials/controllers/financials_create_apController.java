package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_create_apController {
	
	@RequestMapping("/financials_ap_create")//url
	public ModelAndView fapc()
	{
		ModelAndView apc = new ModelAndView();
		apc.setViewName("BeaForm");
		return apc;
	}

}
