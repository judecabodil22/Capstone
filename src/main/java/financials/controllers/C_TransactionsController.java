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
import financials.model.apar_CreateapMODEL;

@Controller
public class C_TransactionsController {

	
	@Autowired
	C_TransactionsDao a;
	
	@RequestMapping("financials_ctransac") //url
	public ModelAndView transactions(@ModelAttribute("ctransac")C_TransactionsModel ctransac)
	{
		ModelAndView ts = new ModelAndView();
		ts.setViewName("Collections/C_Transactions");
		
		List<C_TransactionsModel> dropDown = a.dropDownType();
		ts.addObject("dropdown", dropDown);
		
		
		return ts;
	
	}
	
	public List<C_TransactionsModel> dropDown() {
		return a.dropDownType();
	}
	
	@RequestMapping("ctrans_save")
	public ModelAndView save(@ModelAttribute("ctransac") C_TransactionsModel trans,
			@RequestParam(value = "ohyes", required = false) String save)
	{
		ModelAndView ts = new ModelAndView();
		
	
		
		ts.setViewName("financials_ctransac");
/*		if(save != null)*/
	/*	{*/
			a.insert(trans);
			System.out.println("Success");
			List<C_TransactionsModel> list = a.view();
			ts.addObject("list", list);
	/*	}*/
		return ts;
	}
	
	
	
	
}
