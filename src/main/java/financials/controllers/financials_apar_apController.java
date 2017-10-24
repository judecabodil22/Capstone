package financials.controllers;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.CreateAPDAO;
import financials.model.JEVModel;
import financials.model.apar_CreateapMODEL;

@Controller
public class financials_apar_apController extends BaseController {
	@Autowired
	CreateAPDAO dao;
	
	@RequestMapping("ap_create")
	public ModelAndView create(
			HttpServletRequest request, 
			HttpSession session,
			@ModelAttribute("modelBind") apar_CreateapMODEL model){
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("AP_AR/create_ap");
		mav.addObject("model", model);
		return mav;
	}
}
