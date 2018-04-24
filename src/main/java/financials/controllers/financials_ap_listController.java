package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_ap_listDAO;
import financials.model.financials_ap_listModel;

@Controller
public class financials_ap_listController {
	
	@Autowired
	financials_ap_listDAO APDAO;
	
	@RequestMapping("ap_list")//url
	public ModelAndView fapl(@ModelAttribute("dsb_save") financials_ap_listModel model1)
	{
		ModelAndView apl = new ModelAndView();
		apl.setViewName("AP_AR/apar_ap_list");
		apl.addObject("aplist", APDAO.getAplist());
		return apl;
	}
	
	@RequestMapping("ap_dsb_save")
	public ModelAndView apdsb_save(@ModelAttribute("dsb_save") financials_ap_listModel model,
			@RequestParam(value="submit", required=false) String submit,
			@RequestParam(value="update", required=false) String update) {
		
		try
		{
			if (submit != null) {
				APDAO.insert(model);
				APDAO.update(model);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		ModelAndView dsbt = new ModelAndView();
		dsbt.setViewName("redirect:ap_list");
		return dsbt;
	}

}