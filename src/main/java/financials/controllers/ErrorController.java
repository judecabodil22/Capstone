package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value = "/error/{err}")
	public ModelAndView error404(@PathVariable("err") String err){
		ModelAndView mav = new ModelAndView("error" + err);
		mav.addObject("no", err);
		return mav;
	}
}
