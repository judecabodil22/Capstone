package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.AdminRCentersDAO;
import financials.model.AdminRCentersModel;

@Controller
public class AdminRCController {
	
	@Autowired
	AdminRCentersDAO dao;
	
	@RequestMapping("admin_rCenters")
	public ModelAndView admin_rc(@ModelAttribute("RCenterSave") AdminRCentersModel model,
			@ModelAttribute("rcDelete") AdminRCentersModel delete1,
			@ModelAttribute("RCUpdate") AdminRCentersModel update1)
	{	

		ModelAndView mav = new ModelAndView();
		mav.addObject("rCenters",dao.getRC());
		mav.setViewName("Admin/RCenters");
		return mav;
	}
	
	@RequestMapping("admin_rcenters_save")
	public ModelAndView admin_rc_save(@ModelAttribute("RCenterSave") AdminRCentersModel save)
	{	
		dao.insert(save);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:admin_rCenters");
		
		return mav;
	}
	
	@RequestMapping("admin_rcenters_delete")
	public ModelAndView admin_rc_delete(@ModelAttribute("rcDelete") AdminRCentersModel delete)
	{
		dao.delete(delete);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:admin_rCenters");
		return mav;
	}
	
	
	@RequestMapping("admin_rcenters_update")
	public ModelAndView admin_rc_update(@ModelAttribute("RCUpdate") AdminRCentersModel update)
	{
		dao.update(update);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:admin_rCenters");
		return mav;
	}
}
