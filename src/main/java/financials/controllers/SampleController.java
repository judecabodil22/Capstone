package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;

import financials.dao.SampleDao;
import financials.model.SampleModel;

@Controller
public class SampleController 
{	
	
	@Autowired
	private SampleDao dao;
	
	
	@RequestMapping("/GL_ledger")
	public ModelAndView sample(@ModelAttribute("modelSample") SampleModel jude)
	{	
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("hello", "Hello World");
		mav.setViewName("GLedger/SampleJsp");
		
		return mav;
	}
	
	@RequestMapping("/GL_save")
	public ModelAndView save(@ModelAttribute("modelSample") SampleModel jude,
			@RequestParam(value = "save", required = false) String save,
			@RequestParam(value = "update", required = false) String update)
	{	
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/SampleJsp");
		
		if(save!=null)
		{
			dao.insert(jude);
		}
		else if(update!=null)
		{
			dao.update(jude);
		}
		
		
		return mav;
	}
}
