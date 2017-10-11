package financials.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.model.GLSampMod;

@Controller
public class glsampuiCont {
	
	@RequestMapping("/sampleui") //url
	public ModelAndView SampleUI() //
	{
		
		ModelAndView nav = new ModelAndView();
		
		nav.setViewName("GLedger/sampleui");
		
		return nav;
	}
	
	@RequestMapping("/practice") //url to call jsp
	public ModelAndView SamplePrac() //
	{
		
		ModelAndView nav = new ModelAndView();
		
		nav.setViewName("GLedger/glprac");
		
		
		return nav;
	}

}	 
