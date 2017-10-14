package financials.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.model.BeaFormModel;

public class APAR_DashboardController {

	@RequestMapping("APAR_Dashboard")
	public ModelAndView BeaForm(@ModelAttribute("modelBeaForm") BeaFormModel bea)
	{
		ModelAndView view = new ModelAndView();
		
		List<BeaFormModel> userlist = this.getUsers();	
		
		view.addObject("Vianca", "Hello Bea  -Joong ki");
		view.setViewName("AP_AR/BeaForm");
		view.addObject("Byangcake", userlist);

		return view;		
	}
	
	public List<BeaFormModel> getUsers(){
		return new ArrayList<BeaFormModel>();
	}
}
