package financials.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import financials.dao.UserDAO;
import financials.model.UserModel;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	private UserDAO daoUser;
	
	@RequestMapping(value = "/")
	public ModelAndView init(@ModelAttribute("modelBindUser") UserModel user){
		return this.empty();
	}
	
	private ModelAndView empty(){
		ModelAndView mav = new ModelAndView("index");
		// remove session
		return mav;
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView login(
			HttpServletRequest request, 
			HttpSession session, 
			RedirectAttributes attrs,
			@ModelAttribute("modelBindUser") UserModel user
		){
		ModelAndView mav = new ModelAndView();
		
		UserModel modelUser = daoUser.get(null, user.getUser_name(), user.getPass_word());
		// login successful
		if(modelUser != null){
			mav.setViewName("redirect:/financials_dashboard");
			// store login credentials in session
			this.setLoginSession(session, modelUser);
		}
		// login failed
		else {
			mav.setViewName("index");
			mav.addObject("message", "Invalid User"); // variable to view (same controller)
			// remove login credentials in session
			this.delLoginSession(session);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session){
		this.delLoginSession(session);
		return this.empty();
	}
}
