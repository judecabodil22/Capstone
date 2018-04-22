package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_cjevDAO;
import financials.model.TVoucherModel;
import financials.model.financials_cjevModel;

/*
@RequestMapping("ajax")*/
@Controller
public class financials_cjevController {
	
	@Autowired
	financials_cjevDAO cjvDAO;
	
	@RequestMapping("financials_createjev") //url
	public ModelAndView view(@ModelAttribute("insert_cjev") financials_cjevModel cjv)
	{
		ModelAndView cjev = new ModelAndView();
		List<financials_cjevModel> respCenter = respCenter();
		List<financials_cjevModel> dropDownAccount = dropDownAccount();
		cjev.addObject("respCenter", respCenter);
		
		cjev.addObject("coaAccount", dropDownAccount);
		
		cjev.setViewName("GLedger/financials_cjev");//jsp file
		return cjev;
	}
	public List<financials_cjevModel> respCenter() {
		return cjvDAO.respCenter();
	}
	public List<financials_cjevModel> dropDownAccount() {
		return cjvDAO.dropDownAccount();
	}
	
	@RequestMapping("financials_cjevsave")
		public ModelAndView mav(@ModelAttribute("save") financials_cjevModel cjv,@ModelAttribute("jevd_dbamt") financials_cjevModel cjv2) 
		{
			ModelAndView mav = new ModelAndView();
			mav.setViewName("GLedger/financials_jevlist");
			return mav;
		}
	
	@RequestMapping(value = "CjevAjax", method = RequestMethod.POST, headers={"Content-type=application/json"})
	@ResponseBody
	public boolean GaganaIto(@RequestBody financials_cjevModel model)
	{	
		
		cjvDAO.insertJevInfo(model);
	/*	System.out.print(model.getResp_name()[2]);*/
		
		return true;
	}
			
	
}
