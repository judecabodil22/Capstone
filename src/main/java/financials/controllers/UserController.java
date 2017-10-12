/*package financials.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import financials.dao.DatDao;
import financials.dao.UserDao;
import financials.model.UserModel;

@Controller
public class UserController {

	@Autowired
	private UserDao UserDao;

	@Autowired
	private DatDao dao;

	@RequestMapping("/home")
	public ModelAndView home(@ModelAttribute("modelBindUser") UserModel user) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Welcome");
		mav.addObject("welcome", "Watanays Attribute!");

		return mav;
	}

	@RequestMapping("/welcome")
	public ModelAndView welcome(@ModelAttribute("modelBindUser") UserModel user) {

		List<UserModel> userList = listUser();
		List<UserModel> dropDown = dropDown();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("UserView");
		mav.addObject("userList", userList);
		mav.addObject("dropDown", dropDown);
		return mav;
	}

	public List<UserModel> listUser() {
		return UserDao.getUsers();
	}

	public List<UserModel> dropDown() {
		return UserDao.dropDownId();
	}

	@RequestMapping(value = "/save")
	public ModelAndView save(HttpServletRequest request, @ModelAttribute("modelBindUser") UserModel user,
			@RequestParam(value = "save", required = false) String save,
			@RequestParam(value = "update", required = false) String update,
			@RequestParam(value = "delete", required = false) String delete,
			@RequestParam(value = "findByID", required = false) String id,
			@RequestParam(value = "selectAll", required = false) String select

	)

	{
		ModelAndView mav = new ModelAndView();

		if (save != null) {
			UserDao.insert(user);
			List<UserModel> userList = UserDao.getUsers();
			mav.addObject("userList", userList);
		}

		else if (update != null) {
			UserDao.update(user);
			List<UserModel> userList = UserDao.getUsers();
			mav.addObject("userList", userList);
		}

		else if (delete != null) {
			UserDao.delete(user);
			List<UserModel> userList = UserDao.getUsers();
			mav.addObject("userList", userList);
		}

		else if (select != null) {
			List<UserModel> userList = UserDao.getUsers();
			mav.addObject("userList", userList);
		} else if (id != null) {
			List<UserModel> userList = UserDao.findByIDList(user);
			mav.addObject("userList", userList);
		}

		List<UserModel> dropDown = dropDown();
		mav.addObject("dropDown", dropDown);

		mav.setViewName("UserView");

		System.out.println(user.getUser_id());
		System.out.println(user.getUser_name());
		System.out.println(user.getPass_word());

		return mav;

	}

	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute("modelBindUser") UserModel user) {

		ModelAndView mav = new ModelAndView();

		UserDao.UserValidation(user);
		
		int validate = Integer.parseInt(UserDao.i);
		System.out.println(validate);
			if (validate == 1) {
				
				mav.setViewName("redirect:/GL_Dashboard");
			}
			
			else if(validate== 2)
			{
				mav.setViewName("redirect:/APAR_Dashboard");
			}
			
			else if(validate== 3)
			{
				mav.setViewName("redirect:/D_Dashboard");
			}
			
			else if(validate== 4)
			{
				mav.setViewName("redirect:/C_Dashboard");
			}
			
		 else {
			mav.setViewName("NotLogin");
		}

		return mav;
	}

	@RequestMapping("/C_Dashboard")
	public ModelAndView c_dashboard(@ModelAttribute("modelBindUser") UserModel user) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Collections/C_Dashboard");
		mav.addObject("sampleData", dao.getSampleData());
		mav.addObject("particular", dao.particular());

		return mav;

	}
	@RequestMapping("/APAR_Dashboard")
	public ModelAndView apar_dasboard(@ModelAttribute("modelBindUser") UserModel user) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("AP_AR/apDashboard");
		mav.addObject("sampleData", dao.getSampleData());
		mav.addObject("particular", dao.particular());

		return mav;

	}
	
	@RequestMapping("/D_Dashboard")
	public ModelAndView disbursement_dasboard(@ModelAttribute("modelBindUser") UserModel user) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Disbursement/D_Dashboard");
		mav.addObject("sampleData", dao.getSampleData());
		mav.addObject("particular", dao.particular());

		return mav;

	}
	
	@RequestMapping("/GL_Dashboard")
	public ModelAndView gl_dasboard(@ModelAttribute("modelBindUser") UserModel user) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/GL_Dashboard");
		mav.addObject("sampleData", dao.getSampleData());
		mav.addObject("particular", dao.particular());

		return mav;

	}

}
*/