package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.DV_DAO;

@Controller
public class DV_Controller {
	
	@Autowired
	DV_DAO dd;
	
	@RequestMapping("d_voucher")//url
	public ModelAndView mav()
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Disbursement/Disbursement_Voucher");
		mav.addObject("aplist", dd.getAplist());
		return mav;
	}	

}