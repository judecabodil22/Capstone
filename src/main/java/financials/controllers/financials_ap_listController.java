package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_ap_listController {
	
	@RequestMapping("ap_list")//url
	public ModelAndView fapl()
	{
		ModelAndView apl = new ModelAndView();
		apl.setViewName("AP_AR/apar_ap_list");
		return apl;
	}

}
