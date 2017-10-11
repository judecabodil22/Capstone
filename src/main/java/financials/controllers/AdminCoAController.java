package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.AdminCoADao;
import financials.model.AdminCoAModel;

@Controller
public class AdminCoAController {
	
	@Autowired
	AdminCoADao dao;
	
	@RequestMapping("admin_CoA")
	public ModelAndView admin_coa(@ModelAttribute("CoASave") AdminCoAModel model1,
			@ModelAttribute("CoA_delete") AdminCoAModel model2)
	{
		ModelAndView mav = new ModelAndView();
				mav.setViewName("Admin/ChartOfAccounts");
				mav.addObject("types", dao.dropDownType());
				mav.addObject("CoA", dao.getCoA());
				
		return mav;
	}
	
	@RequestMapping("admin_CoA_save")
	public ModelAndView admin_coa_save(@ModelAttribute("CoASave") AdminCoAModel model)
	{	
		
		dao.insert(model);
	
		ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:admin_CoA");
			
			return mav;
	}
	
	@RequestMapping("admin_CoA_delete")
	public ModelAndView admin_coa_delete(@ModelAttribute("CoA_delete") AdminCoAModel model)
	{	
		
		dao.delete(model);
		ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:admin_CoA");
			
			return mav;
	}

}
