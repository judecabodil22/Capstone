package financials.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import financials.dao.UserDAO;
import financials.model.ApiModel;
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
		
		UserModel modelUser = daoUser.get(null, user.getUsername(), user.getPassword());
		// login successful
		if(modelUser != null){
			mav.setViewName("redirect:/financials_dashboard");
			// store login credentials in session
			this.setLoginSession(session, modelUser);
		}
		// login failed
		else {
			mav.setViewName("index");
			mav.addObject("error", "Invalid User"); // variable to view (same controller)
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
	
	
	/**
	 * API
	 */
	
	// view
	@RequestMapping(value = "/testApiUser")
	public ModelAndView apiTestUser(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("testApiUser");
		return mav;
	}
			
	// new user	
	@RequestMapping(value = "/apiCreateUser")
	public @ResponseBody ApiModel apiCreateUser(
		@RequestParam(value = "username", required = false) String username,
		@RequestParam(value = "password", required = false) String password) {
		
		ApiModel api = new ApiModel();
		
		UserModel model = new UserModel();
		model.setUsername(username);
		model.setPassword(password);
		if(daoUser.insert(model)){
			api.setStatusCode(200); // STATUS OK
			api.setMessage("Successfully created new user");
		} else {
			api.setStatusCode(500); // STATUS INTERNAL ERROR
			api.setMessage("Failed to create new user");
			api.setData(model);
		}
		
		return api;
	}
	
	// list
	@RequestMapping(value = "/apiListUser")
	public @ResponseBody ApiModel apiListUser(
		@RequestParam(value = "username", required = false) String username,
		@RequestParam(value = "password", required = false) String password) {
		
		ApiModel api = new ApiModel();
		api.setStatusCode(200); // STATUS OK
		api.setMessage("User List");
		api.setData(daoUser.getUsers());
		
		return api;
	}
	
	
	// delete
	@RequestMapping(value = "/apiDeleteUser/{user_id}", method = RequestMethod.DELETE)
	public @ResponseBody ApiModel apiDeleteUser(
		@PathVariable("user_id") Integer user_id) {
		
		UserModel model = new UserModel();
		model.setUser_id(user_id);
		
		daoUser.delete(model);
		
		ApiModel api = new ApiModel();
		api.setStatusCode(200); // STATUS OK
		api.setMessage("Successfully deleted user");
		
		return api;
	}
}
