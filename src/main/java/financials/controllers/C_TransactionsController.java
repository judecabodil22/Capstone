package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.C_TransactionsDao;
import financials.model.C_TransactionsModel;
import financials.model.TVoucherModel;
@Controller
public class C_TransactionsController {

	
	@Autowired
	C_TransactionsDao a;
	
	@RequestMapping("financials_ctransac") //url
	public ModelAndView transactions(@ModelAttribute("ctransac") C_TransactionsModel ctransac)
	{
		ModelAndView ts = new ModelAndView();
		ts.setViewName("Collections/C_Transactions");
		

		List<C_TransactionsModel> dropDown = dropDownType();
		ts.addObject("dropdown", dropDown);
		
		return ts;
	
	}
	

	
	public List<C_TransactionsModel> dropDownType() {
		return a.dropDownType();

	}
	
	@RequestMapping("cashiering_save")
	public ModelAndView cashiering_save(@ModelAttribute("ctransac") C_TransactionsModel model,
			@RequestParam(value = "submit", required = false) String submit)
	{
		
		ModelAndView mav = new ModelAndView();
		
				a.insert(model);
		
		mav.setViewName("Collections/C_Transactions");
		return mav;
			
	}
	
}
