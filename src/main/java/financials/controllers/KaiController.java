package financials.controllers;

import java.io.Console;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.KaiDao;
import financials.model.KaiModel;

@Controller
public class KaiController {

	@Autowired
	private KaiDao AbiDao;

	@RequestMapping("Collections")
	public ModelAndView Kai(@ModelAttribute("modelKai") KaiModel Abi) {
		ModelAndView c_view = new ModelAndView();
		c_view.addObject("Welcome", "Hello Bish!");
		c_view.setViewName("Collections/Kai");

		return c_view;
	}

	@RequestMapping("/c_save")
	public ModelAndView save(@ModelAttribute("modelKai") KaiModel Abi,
			@RequestParam(value = "Save", required = false) String Save,
			@RequestParam(value = "Update", required = false) String Update,
			@RequestParam(value = "Delete", required = false) String Delete)
	{
		ModelAndView c_view;
		c_view = new ModelAndView();

		String message="";
		boolean bool=true;
				
		if(Save!=null)
		{
			bool= AbiDao.c_insert(Abi);
		}
		else if (Update!=null)
		{
			bool= AbiDao.c_update(Abi);
		}
		else if(Delete!=null)
		{
			bool= AbiDao.c_delete(Abi);
		}
		
		
		if(bool)
		{
		message="Success!";
		}
		else
		{
			message="Failed!";
		}
		
		c_view.addObject("Welcome",message);
		c_view.setViewName("Collections/Kai");

		return c_view;
	}

}
