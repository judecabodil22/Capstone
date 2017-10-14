package financials.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import financials.model.UserModel;

public class BaseController {
	/**
	 * Redirect to Error page
	 * @return
	 */
	public ModelAndView errorNotLogin(){
		return new ModelAndView("redirect:/error");
	}
	
	/**
	 * Add Login credentials in session
	 * @param session
	 * @param modelUser
	 */
	public void setLoginSession(HttpSession session, UserModel modelUser){
		session.setAttribute("login", modelUser);
	}
	
	/**
	 * Remove Login credentials in session
	 * @param session
	 */
	public void delLoginSession(HttpSession session){
		session.removeAttribute("login");
	}
	
	/**
	 * Get Login credentials in session
	 * @param session
	 * @param modelUser
	 */
	public UserModel getLoginSession(HttpSession session){
		UserModel modelUser = (UserModel) session.getAttribute("login");
		return modelUser;
	}
}
