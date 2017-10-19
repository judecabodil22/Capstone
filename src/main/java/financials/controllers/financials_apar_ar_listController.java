package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_apar_ar_listController {

	@RequestMapping("ar_list")//url
	public ModelAndView fapr()
	{
		ModelAndView arl = new ModelAndView();
		arl.setViewName("AP_AR/apar_ar_list");
		return arl;
	}
}
