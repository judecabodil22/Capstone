package financials.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.JEVDAO;
import financials.model.UserModel;

@Controller
@RequestMapping("JEV")
public class JEVController extends BaseController {
	
	@Autowired
	private JEVDAO daoJev;
	
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
		
		mav.addObject("data", daoJev.list());
		
		return mav;
	}
	
	@RequestMapping("create") //url
	public ModelAndView create()
	{
		ModelAndView fd = new ModelAndView();
		fd.setViewName("GLedger/JEV/create");//
		return fd;
	}
}

