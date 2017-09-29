package financials.controllers;

import java.util.List;

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
		
		List<GLSampMod> selist = dao.getUsers();
		nav.addObject("c", selist);
		
		return nav;
	}
	
	@RequestMapping("/userlist")
	public ModelAndView user(@ModelAttribute("ModelBindUser") GLSampMod glsamp,
			@RequestParam(value = "gls_save", required = false) String glsave,
			@RequestParam(value = "gls_alter", required = false) String glalter,
			@RequestParam(value = "gls_remove", required = false) String gldel,
			@RequestParam(value = "gls_get", required = false) String glsel,
			@RequestParam(value = "gls_get2", required = false) String glsel2)	
	{		
		String message = "";
		boolean bool = true;
		
		ModelAndView ins = new ModelAndView();
		
		
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
			
			List<GLSampMod> selist = dao.getUsers();
			ins.addObject("c", selist);
			
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
			List<GLSampMod> selist = dao.getUsers();
			ins.addObject("c", selist);
			
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
			List<GLSampMod> selist = dao.getUsers();
			ins.addObject("c", selist);
			
		}
		
		else if (glsel!=null)
		{
			List<GLSampMod> selist = dao.getUsers();
			ins.addObject("c", selist);
		}
		
		else if (glsel2!=null)
		{
			List<GLSampMod> sel2ist = dao.findByIDList(glsamp);
			ins.addObject("c", sel2ist);
		}
	

			

		
		ins.addObject("b", message);
		ins.setViewName("GLedger/GLSample");
		
		return ins;
	
	}
	
	
	
}


