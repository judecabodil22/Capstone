package financials.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class financials_apar_arlistController {
	
	@RequestMapping("ar_list2")//url
	public ModelAndView fapr()
	{
		ModelAndView arl = new ModelAndView();
		arl.setViewName("AP_AR/apar_ar_list");
		return arl;
	}

}
