package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import financials.dao.AccountTypeDao;
import financials.model.AccountTypeModel;

@Controller
public class AdminATController {

	@Autowired
	AccountTypeDao dao;

	@RequestMapping("admin_accountTypes")
	public ModelAndView account_types(@ModelAttribute("ATSave") AccountTypeModel model1,
			@ModelAttribute("accountType_delete") AccountTypeModel model2,
			@ModelAttribute("accountType_update") AccountTypeModel model3) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("Admin/AccountTypes");
		mav.addObject("types", dao.dropDownType());
		mav.addObject("accounts", dao.getAccountType());
		mav.addObject("module", "admin_accountTypes");
		return mav;
	}

	@RequestMapping("admin_AccountType_save")
	public ModelAndView account_Type_save(@ModelAttribute("ATSave") AccountTypeModel model) {
		
		dao.insert(model);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("redirect:admin_accountTypes");

		return mav;
	}

	@RequestMapping("admin_accountType_delete")
	public ModelAndView account_Type_delete(@ModelAttribute("accountType_delete") AccountTypeModel model) {

		dao.delete(model);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("redirect:admin_accountTypes");

		return mav;

	}
	
	@RequestMapping("admin_accountType_update")
	public ModelAndView account_Type_update(@ModelAttribute("accountType_update") AccountTypeModel model1) {

		dao.update(model1);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("redirect:admin_accountTypes");

		return mav;

	}
	
	@RequestMapping("/logistics")
	public RedirectView localRedirect() {
	    RedirectView redirectView = new RedirectView();
	    redirectView.setUrl("http://localhost:8080/wms/");
	    return redirectView;
	}

}
