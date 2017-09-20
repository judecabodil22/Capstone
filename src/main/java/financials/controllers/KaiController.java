package financials.controllers;

import java.io.Console;
import java.util.List;

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

	@RequestMapping("/Collections")
	public ModelAndView Kai(@ModelAttribute("modelKai") KaiModel Abi)
	{
		List<KaiModel> KaiList= AbiDao.getUsers();
		ModelAndView c_view = new ModelAndView();
		c_view.addObject("Welcome", "Hello Bish!");
		c_view.setViewName("Collections/Kai");
		c_view.addObject("List",KaiList);
		
		

		return c_view;
	}

	@RequestMapping("/c_save")
	public ModelAndView save(@ModelAttribute("modelKai") KaiModel Abi,
			@RequestParam(value = "Save", required = false) String Save,
			@RequestParam(value = "Update", required = false) String Update,
			@RequestParam(value = "Delete", required = false) String Delete,
			@RequestParam(value = "Select", required = false) String SelectAll,
			@RequestParam(value = "ID", required = false) String Select)
	{
		ModelAndView c_view;
		c_view = new ModelAndView();

		String message="";
		boolean bool=true;
				
		if(Save!=null)
		{
			bool= AbiDao.insert(Abi);
		}
		else if (Update!=null)
		{
			bool= AbiDao.update(Abi);
		}
		else if(Delete!=null)
		{
			bool= AbiDao.delete(Abi);
		}
		else if(SelectAll!=null)
		{
			AbiDao.getUsers();
		}
		else if(Select!=null)
		{
			List<KaiModel> list = AbiDao.findByIDList(Abi);
			c_view.addObject("List",list);
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
