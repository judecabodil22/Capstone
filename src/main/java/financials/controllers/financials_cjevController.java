package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_cjevDAO;
import financials.model.TVoucherModel;
import financials.model.financials_cjevModel;

@Controller
public class financials_cjevController {
	
	@Autowired
	financials_cjevDAO cjvDAO;
	
	@RequestMapping("financials_createjev") //url
	public ModelAndView view(@ModelAttribute("insert_cjev") financials_cjevModel cjv,
			@ModelAttribute("resp_name") financials_cjevModel cjv2,
			@ModelAttribute("dbcoa_name") financials_cjevModel cjv3)
	{
		ModelAndView cjev = new ModelAndView();
		List<financials_cjevModel> respCenter = respCenter();
		List<financials_cjevModel> accounts = accounts();
		cjev.addObject("respCenter", respCenter);
		cjev.addObject("accounts", accounts);
		cjev.setViewName("GLedger/financials_cjev");//jsp file
		return cjev;
	}
	public List<financials_cjevModel> respCenter() {
		return cjvDAO.respCenter();
	}
	public List<financials_cjevModel> accounts() {
		return cjvDAO.accounts();
	}
	
	@RequestMapping("financials_cjevsave")
		public ModelAndView mav(@ModelAttribute("save") financials_cjevModel cjv) 
		{
			ModelAndView mav = new ModelAndView();
			mav.setViewName("GLedger/financials_cjev");
			return mav;
		}
	
}
