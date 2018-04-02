package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.CreateAPDAO;
import financials.model.TVoucherModel;
import financials.model.apar_CreateapMODEL;

@Controller
public class financials_ap_listController {
	
	@Autowired
	CreateAPDAO apDao;
	
	
	@RequestMapping("ap_list")//url
	public ModelAndView fapl()
	{
		ModelAndView apl = new ModelAndView();
		apl.addObject("APList",apDao.getcap());
		apl.setViewName("AP_AR/apar_ap_list");
		apl.addObject("aplist", getcap());
		return apl;
	}
	
	public List<apar_CreateapMODEL> getcap() {
		return apDao.getcap();
	}
	
	

}
