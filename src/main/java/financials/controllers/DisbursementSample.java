package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.DisbursementDAO;
import financials.model.DisbursementSampleModel;

@Controller
public class DisbursementSample {
	@Autowired
	DisbursementDAO ddao;

	@RequestMapping("d_disbursement")
	public ModelAndView d_view(@ModelAttribute("insert") DisbursementSampleModel dsm) {
		
		
		
		ModelAndView disburse = new ModelAndView();
		disburse.addObject("dis", "Disbursement");
		disburse.setViewName("Disbursement/Disburse");
		return disburse;

	}
	
	@RequestMapping("d_save")
	public ModelAndView d_look(@ModelAttribute("insert") DisbursementSampleModel dsm) {
		
		ddao.insert(dsm);
		
		ModelAndView disburse = new ModelAndView();
		disburse.addObject("dis", "Disbursement");
		disburse.setViewName("Disbursement/Disburse");
		return disburse;

	}
	

}
