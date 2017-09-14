package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.DatDao;
import financials.dao.UserDao;
import financials.model.DateModel;

@Controller
public class DashBoardController {
	
	@Autowired
	private DatDao dao;
	

	
	/*@RequestMapping("/Dashboard")
	public ModelAndView board()
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Dashboard");
		
		
		
		mav.addObject("sampleData", dao.getSampleData());
		mav.addObject("particular", dao.particular());
		
		return mav;
		
	}*/
	
	@RequestMapping("/db")
	public ModelAndView Practice(@ModelAttribute("modelBindDate") DateModel date)
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("NewFile");
		
		
		
		mav.addObject("sampleData", dao.getSampleData());
	
		mav.addObject("particular", dao.particular());
		
		return mav;
		
	}
	
	


}
