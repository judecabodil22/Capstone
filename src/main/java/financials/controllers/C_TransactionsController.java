package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.C_TransactionsDao;
import financials.model.C_TransactionsModel;

@Controller
public class C_TransactionsController {

	
	@Autowired
	C_TransactionsDao a;
	
	@RequestMapping("financials_ctransac") //url
	public ModelAndView transactions(@ModelAttribute("ctransac")C_TransactionsModel ctransac)
	{
		ModelAndView ts = new ModelAndView();
		ts.setViewName("Collections/C_Transactions");
		
		List<C_TransactionsModel> list = a.dropDownType();
		ts.addObject("IGP_Type", list);
		
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i).getC_Type());
		}
		return ts;
	
	}
	
	
}
