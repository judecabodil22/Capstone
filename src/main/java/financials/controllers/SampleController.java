package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;

import financials.dao.SampleDao;
import financials.model.SampleModel;
import financials.model.UserModel;

@Controller
public class SampleController 
{	
	
	@Autowired
	private SampleDao dao;
	
	
	@RequestMapping("/GL_ledger")
	public ModelAndView sample(@ModelAttribute("modelSample") SampleModel jude)
	{	
		
		List<SampleModel> list = dao.getUsers();
		
		ModelAndView mav = new ModelAndView();		
		
		mav.addObject("hello", "Hello World");
		
		mav.addObject("jude", list);
		
		mav.setViewName("GLedger/SampleJsp");
		
		
		
		return mav;
	}
	
	@RequestMapping("/GL_save")
	public ModelAndView save(@ModelAttribute("modelSample") SampleModel jude,
			@RequestParam(value = "save", required = false) String save,
			@RequestParam(value = "update", required = false) String update,
			@RequestParam(value = "select", required = false) String select,
			@RequestParam(value = "id", required = false) String id)
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
		else if(select!=null)
		{
			dao.getUsers();
		}
		
		else if(id!=null)
		{
			List<SampleModel> list = dao.findByIDList(jude);
			mav.addObject("jude", list);
			
		}
		
		return mav;
	}
}
