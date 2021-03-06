package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.AdminFundDao;
import financials.model.AdminFundModel;

@Controller
public class AdminFundController {
	
	@Autowired
	AdminFundDao dao;
	
	@RequestMapping("admin_funds")
	public ModelAndView funds(@ModelAttribute("fundingHappiness") AdminFundModel fund,
			@RequestParam(value = "submit", required = false) String save,
			@RequestParam(value = "reset", required = false) String reset)
	{
		ModelAndView mav = new ModelAndView();
		
		List<AdminFundModel> list = dao.getFunds();
		mav.setViewName("Admin/Funds");
		mav.addObject("list", list);
		
		
		return mav;
	}
	
	
	@RequestMapping("admin_funds_save")
	public ModelAndView save(@ModelAttribute("fundingHappiness") AdminFundModel fund,
			@RequestParam(value = "submit", required = false) String save,
			@RequestParam(value = "reset", required = false) String reset)
	{
		ModelAndView mav = new ModelAndView();
		
	
		
		mav.setViewName("redirect:admin_funds");
		if(save != null)
		{
			dao.insert(fund);
			System.out.println("Success");
			List<AdminFundModel> list = dao.getFunds();
			mav.addObject("list", list);
			
		}
		
		
		return mav;
	}
	
	
	@RequestMapping("admin_funds_update")
	public ModelAndView update(@ModelAttribute("fundingHappiness") AdminFundModel fund,
			@RequestParam(value = "submit", required = false) String save,
			@RequestParam(value = "reset", required = false) String reset)
	{
		ModelAndView mav = new ModelAndView();
		
	
		mav.setViewName("redirect:admin_funds");
			
		if(save != null)
		{
			dao.update(fund);
			System.out.println("Success");
			List<AdminFundModel> list = dao.getFunds();
			mav.addObject("list", list);
			
		}
		
		
		return mav;
	}
	
	
	
	
	
	@RequestMapping("admin_funds_delete")
	public ModelAndView delete(@ModelAttribute("fundingHappiness") AdminFundModel fund,
			@RequestParam(value = "submit", required = false) String save,
			@RequestParam(value = "reset", required = false) String reset,
			@RequestParam(value = "Delete", required = false) String delete)
	{
		ModelAndView mav = new ModelAndView();
		
	
		mav.setViewName("redirect:admin_funds");
			
		if(delete != null)
		{
			dao.delete(fund);
			System.out.println("Success");
			List<AdminFundModel> list = dao.getFunds();
			mav.addObject("list", list);
			
		}
		
		System.out.println(delete);
		
		
		
		return mav;
	}
	
	
	
	
}
