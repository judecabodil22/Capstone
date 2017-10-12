package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.AdminTransactionDao;
import financials.model.AdminTransactionModel;

@Controller
public class AdminTransactionController {

	@Autowired
	AdminTransactionDao dao;
	
	@RequestMapping("admin_transaction")
	public ModelAndView transaction(@ModelAttribute("transaction_delete") AdminTransactionModel model,
			@ModelAttribute("ModelBindSave") AdminTransactionModel model11,
			@ModelAttribute("transaction_update") AdminTransactionModel update101)
	{
		ModelAndView mav = new ModelAndView();
				mav.setViewName("Admin/Transaction");
				mav.addObject("transaction", dao.getTransactions());
				mav.addObject("types", dao.dropDownType());
				return mav;
	} 
	
	@RequestMapping("admin_transactions_delete")
	public ModelAndView transaction_delete(@ModelAttribute("transaction_delete") AdminTransactionModel model)
	{	
		
		dao.delete(model);
		
		ModelAndView mav = new ModelAndView();
				mav.setViewName("redirect:admin_transaction");
				mav.addObject("transaction", dao.getTransactions());
				mav.addObject("types", dao.dropDownType());
				
				
				
				return mav;
	}
	
	@RequestMapping("admin_transaction_save")
	public ModelAndView transaction_save(@ModelAttribute("ModelBindSave") AdminTransactionModel model)
	{	
		
		dao.insert(model);
		
		ModelAndView mav = new ModelAndView();	
				mav.addObject("types", dao.dropDownType());
				mav.setViewName("redirect:admin_transaction");
				mav.addObject("transaction", dao.getTransactions());
				return mav;
	}
	
	@RequestMapping("admin_transaction_update")
	public ModelAndView transaction_update(@ModelAttribute("transaction_update") AdminTransactionModel update101)
	{	
		
		dao.update(update101);
		
		ModelAndView mav = new ModelAndView();	
				mav.addObject("types", dao.dropDownType());
				mav.setViewName("redirect:admin_transaction");
				mav.addObject("transaction", dao.getTransactions());
				return mav;
	}

}
