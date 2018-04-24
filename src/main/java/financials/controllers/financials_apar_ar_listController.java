package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_ar_listDAO;
import financials.model.financials_ar_listModel;

@Controller
public class financials_apar_ar_listController {
	
	@Autowired
	financials_ar_listDAO ARDAO;
	
	@RequestMapping("ar_list")//url
	public ModelAndView fapr(@ModelAttribute("col_save") financials_ar_listModel model1)
	{	
		ModelAndView arl = new ModelAndView();
		arl.setViewName("AP_AR/apar_ar_list");
		arl.addObject("arlist", ARDAO.getArlist());
		return arl;
	}
	
	@RequestMapping("ar_col_save")
	public ModelAndView arcol_save(@ModelAttribute("col_save") financials_ar_listModel model,
			@RequestParam(value="submit", required=false) String submit,
			@RequestParam(value="update", required=false) String update ) 
	{
		try
		{
			if (submit != null) {
				ARDAO.insert(model);
				ARDAO.update(model);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		ModelAndView cols = new ModelAndView();
		cols.setViewName("redirect:ar_list");
		return cols;	
	}
	
}