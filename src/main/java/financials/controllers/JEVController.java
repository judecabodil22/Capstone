package financials.controllers;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import financials.common.constants;
import financials.common.helpers;
import financials.dao.JEVDAO;
import financials.model.JEVModel;
import financials.model.UserModel;

@Controller
@RequestMapping("JEV")
public class JEVController extends BaseController {
	
	@Autowired
	private JEVDAO daoJEV;
	
	@Autowired
	private helpers helpers;
	
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
		
		mav.addObject("module", "JEV_list");
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
		
		Calendar cal = Calendar.getInstance();
		Date date = cal.getTime();
		
		if(modelJEV.getJev_date() == null){
			modelJEV.setJev_date(date);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/JEV/create");
		mav.addObject("modelJEV", modelJEV);
		mav.addObject("module", "JEV_create");
		
		mav.addObject("listFund", helpers.listFund());
		mav.addObject("listTransType", helpers.listTransType());
		mav.addObject("listTemp", helpers.listTemp());
		mav.addObject("listResp", helpers.listResp());
		
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
		
		boolean bool = false;
		try {
			modelJEV.setJev_no(daoJEV.getNewJevNo(modelJEV.getJev_date()));
			modelJEV.setPrepared_by(modelUser.getUser_id());
			modelJEV.setResp_center_uid(1);
			modelJEV.setStatus("Pending");
			bool = daoJEV.insert(modelJEV);
		} catch(Exception e){
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		if(bool){
			// show view
			mav.setViewName("redirect:/JEV/view/" + modelJEV.getJev_no());
		}
		else {
			// error
			mav.setViewName("GLedger/JEV/create");
			mav.addObject("error", "Insert Failed");
		}
		mav.addObject("module", "JEV_create");
		return mav;
	}
	
	
	@RequestMapping(value = "view/{jev_no}")
	public ModelAndView view(
			HttpServletRequest request, 
			HttpSession session,
			@PathVariable("jev_no") String jev_no){
		
		UserModel modelUser = this.getLoginSession(session);
		if(modelUser == null){
			return this.errorNotLogin();
		}
		
		JEVModel modelJEV = daoJEV.getByJevNo(jev_no);
		modelJEV.setFund_uid_name(
				helpers.getName(modelJEV.getFund_uid(), constants.TBL_FS_FUND)
		);
		modelJEV.setTmp_header_uid_name(
				helpers.getName(modelJEV.getTmp_header_uid(), constants.TBL_FS_TEMPHEADER)
		);
		modelJEV.setTrans_transaction_type_uid_name(
				helpers.getName(modelJEV.getTrans_transaction_type_uid(), constants.TBL_FS_TRANSACTYPE)
		);
		modelJEV.setResp_center_uid_name(
				helpers.getName(modelJEV.getResp_center_uid(), constants.TBL_FS_RESPCENTER)
		);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("GLedger/JEV/view");
		mav.addObject("modelJEV", modelJEV);
		mav.addObject("module", "JEV_list");
		return mav;
	}
}

