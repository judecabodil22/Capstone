package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorController {
	/**
	 * Display Error page
	 * @return
	 */
	@RequestMapping(value = "/error")
	public ModelAndView error(){
		return new ModelAndView("error");
	}
}
