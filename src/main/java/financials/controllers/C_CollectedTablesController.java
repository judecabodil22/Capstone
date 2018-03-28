package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class C_CollectedTablesController {

	@RequestMapping("financials_Collected") //url
	public ModelAndView transactions()
	{
		ModelAndView in = new ModelAndView();
		in.setViewName("Collections/C_CollectedTables");
		return in;
	}
}
