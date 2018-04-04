package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_ap_listDAO;

@Controller
public class financials_ap_listController {
	
	@Autowired
	financials_ap_listDAO APDAO;
	
	@RequestMapping("ap_list")//url
	public ModelAndView fapl()
	{
		ModelAndView apl = new ModelAndView();
		apl.setViewName("AP_AR/apar_ap_list");
		apl.addObject("aplist", APDAO.getAplist());
		return apl;
	}	

}