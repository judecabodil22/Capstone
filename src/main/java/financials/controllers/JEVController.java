package financials.controllers;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.JEVDAO;
import financials.model.JEVModel;
import financials.model.UserModel;

@Controller
@RequestMapping("JEV")
public class JEVController extends BaseController {
	
	@Autowired
	private JEVDAO daoJEV;
	
	@RequestMapping("list")
	public ModelAndView listing(
			HttpServletRequest request, 
			HttpSession session
		){
		
		UserModel modelUser = this.getLoginSession(session);
		if(modelUser == null){
			return this.errorNotLogin();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/JEV/list");
		
		mav.addObject("data", daoJEV.list());
		
		return mav;
	}
	
	@RequestMapping("create")
	public ModelAndView create(
			HttpServletRequest request, 
			HttpSession session,
			@ModelAttribute("modelBindJEV") JEVModel modelJEV){
		
		UserModel modelUser = this.getLoginSession(session);
		if(modelUser == null){
			return this.errorNotLogin();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/JEV/create");
		
		return mav;
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public ModelAndView save(
			HttpServletRequest request, 
			HttpSession session,
			@ModelAttribute("modelBindJEV") JEVModel modelJEV,
			BindingResult result
			){
		
		UserModel modelUser = this.getLoginSession(session);
		if(modelUser == null){
			return this.errorNotLogin();
		}
		
		Calendar cal = Calendar.getInstance();
		Date date = cal.getTime();
		
		if(modelJEV.getJev_date() == null){
			modelJEV.setJev_date(date);
		}
		
		try {
			modelJEV.setJev_no("1");
			modelJEV.setPrepared_by(modelUser.getUser_id());
			modelJEV.setResp_center_uid(1);
			modelJEV.setStatus("Pending");
			daoJEV.insert(modelJEV);
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return this.listing(request, session);
	}
}

