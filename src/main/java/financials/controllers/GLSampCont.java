package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.GLSampDAO;
import financials.model.GLSampMod;

@Controller
public class GLSampCont 
{
	@Autowired
	private GLSampDAO dao;
	
	@RequestMapping("/sample") //url
	public ModelAndView Sample(@ModelAttribute("ModelBindUser") GLSampMod glsamp) //
	{
		
		ModelAndView nav = new ModelAndView();
		
		nav.addObject("b", "Hello User");
		nav.setViewName("GLedger/GLSample");
		
		return nav;
	}
	
	@RequestMapping("/userlist")
	public ModelAndView user(@ModelAttribute("ModelBindUser") GLSampMod glsamp,
			@RequestParam(value = "gls_save", required = false) String glsave,
			@RequestParam(value = "gls_alter", required = false) String glalter,
			@RequestParam(value = "gls_remove", required = false) String gldel)
	{		
		String message = "";
		boolean bool = true;
		
		
		if (glsave!=null)
		{
			bool = dao.insert(glsamp);
			if (bool)
			{
				message = "PASOK";
			}
			else 
			{
				message = "error failed to insert";
			}
			
		}
		
		else if (glalter!=null)
		{
			bool = dao.update(glsamp);
			if (bool)
			{
				message = "NABAGO";
			}
			else 
			{
				message = "wala";
			}
			
		}
		
		else if (gldel!=null)
		{
			bool = dao.delete(glsamp);
			if (bool)
			{
				message = "BYE";
			}
			else 
			{
				message = "CRY";
			}
			
		}
		

			
		ModelAndView ins = new ModelAndView();
		
		ins.addObject("b", message);
		ins.setViewName("GLedger/GLSample");
		
		return ins;
	
	}
	
	
	
}


