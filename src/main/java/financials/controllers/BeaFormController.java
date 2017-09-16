package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.BeaFormDao;
import financials.model.BeaFormModel;

@Controller 
public class BeaFormController {
	
	@Autowired
	private BeaFormDao BeaDao;
	
	@RequestMapping("APAR")
	public ModelAndView BeaForm(@ModelAttribute("modelBeaForm") BeaFormModel bea)
	{
		ModelAndView view = new ModelAndView();
		
		view.addObject("Vianca", "Hello Bea  -Joong ki");
		view.setViewName("AP_AR/BeaForm");
		return view;		
	}
	
	@RequestMapping("/APARsave")
	public ModelAndView APARSave(@ModelAttribute("modelBeaForm") BeaFormModel bea,
			@RequestParam(value = "Save", required = false) String save,
			@RequestParam(value = "Update", required = false) String update,
			@RequestParam(value = "Delete", required = false) String delete)
	{
	
		String message ="";
		boolean bool = true;
		if(save!=null) {
			bool = BeaDao.insert(bea);
			
		}
		else if(update!=null) {
			bool = BeaDao.update(bea);
		}
		else if(delete!=null) {
			bool = BeaDao.delete(bea);
		}
	
		
		if (bool) {
			message = "Sucess!";
		}
		else {
			message = "Failed!";
		}
		ModelAndView view = new ModelAndView();
		
		view.addObject("Vianca", message);
		view.setViewName("AP_AR/BeaForm");
		return view;	
	}
}
