package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_jevlistDAO;
import financials.model.financials_jevlistModel;

@Controller
public class financials_jevlistController {
	
	@Autowired
	financials_jevlistDAO dao;
	
	@RequestMapping("financials_jevlist") //url
	public ModelAndView jvl()
	{
		ModelAndView jvl = new ModelAndView();
		jvl.addObject("jev_info", getJev_info());
		jvl.setViewName("GLedger/financials_jevlist");//directory
		//jvl.addObject("jev_info", dao.getJev_info());
		return jvl;
	}
	
	public List<financials_jevlistModel> getJev_info() {
		return dao.getJev_info();
	}
	
}
