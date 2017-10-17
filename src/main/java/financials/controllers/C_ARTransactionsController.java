package financials.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class C_ARTransactionsController {

	@RequestMapping("financials_ctransac2") //url
	public ModelAndView transactions()
	{
		ModelAndView ts2 = new ModelAndView();
		ts2.setViewName("Collections/C_ARTransactions");
		return ts2;
	}
}
