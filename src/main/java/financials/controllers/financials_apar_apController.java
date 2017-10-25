package financials.controllers;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.CreateAPDAO;
import financials.model.AdminFundModel;
import financials.model.JEVModel;
import financials.model.apar_CreateapMODEL;

@Controller
public class financials_apar_apController extends BaseController {
	@Autowired
	CreateAPDAO dao;
	
	@RequestMapping("ap_create")
	public ModelAndView create(
			@ModelAttribute("cap_model") apar_CreateapMODEL cap_model,
			HttpServletRequest request, 
			HttpSession session,
			@ModelAttribute("modelBind") apar_CreateapMODEL model)
			{
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("AP_AR/create_ap");
		mav.addObject("model", model);
		
		List<apar_CreateapMODEL> listresp = dao.dropdownresp_id();
		mav.addObject("tbl_responsibility_center", listresp);
		
		for(int i=0; i<listresp.size(); i++) {
			System.out.println(listresp.get(i).getResp_center_description());
		}
		List<apar_CreateapMODEL> listacc = dao.dropdownacc_id();
		mav.addObject("tbl_account_type", listacc);
		
		for(int i=0; i<listacc.size(); i++) {
			System.out.println(listacc.get(i).getAcc_description());
		}
		return mav;
	}
	@RequestMapping("cap_save")
	public ModelAndView save(@ModelAttribute("cap_model") apar_CreateapMODEL cap,
			@RequestParam(value = "submit", required = false) String save,
			@RequestParam(value = "reset", required = false) String reset)
	{
		ModelAndView mav = new ModelAndView();
		
	
		
		mav.setViewName("redirect:cap_save");
		if(save != null)
		{
			dao.insert(cap);
			System.out.println("Success");
			List<apar_CreateapMODEL> list = dao.getcap();
			mav.addObject("list", list);	
		}
		return mav;
	}
}
