package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_ar_listDAO;

@Controller
public class financials_apar_ar_listController {
	
	@Autowired
	financials_ar_listDAO ARDAO;

	@RequestMapping("ar_list")//url
	public ModelAndView fapr()
	{
		ModelAndView arl = new ModelAndView();
		arl.setViewName("AP_AR/apar_ar_list");
		arl.addObject("aplist", ARDAO.getArList());
		return arl;
	}
}
