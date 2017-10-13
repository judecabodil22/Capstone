package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("JEV")
public class JEVController {
	
	@RequestMapping("list") //url
	public ModelAndView listing()
	{
		ModelAndView fd = new ModelAndView();
		fd.setViewName("GLedger/JEV/list");//
		return fd;
	}
	
	@RequestMapping("create") //url
	public ModelAndView create()
	{
		ModelAndView fd = new ModelAndView();
		fd.setViewName("GLedger/JEV/create");//
		return fd;
	}
}

