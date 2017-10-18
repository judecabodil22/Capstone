package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.DVDAO;
import financials.model.DVModel;

@Controller
public class DVController {
	@Autowired
	DVDAO dvd;

	@RequestMapping("DV_Transaction")
	public ModelAndView mav(@ModelAttribute("insert") DVModel dvm) {

		ModelAndView mav = new ModelAndView();
		List<DVModel> dropDown = dropDown();
		List<DVModel> dropDown2 = dropDown2();
		List<DVModel> dropDown3 = dropDown3();
		List<DVModel> dropDown4 = dropDown4();
		List<DVModel> dropDown5 = dropDown5();
		List<DVModel> dropDown6 = dropDown6();
		List<DVModel> dropDown7 = dropDown7();
		mav.addObject("dis", "Disbursement");
		mav.setViewName("Disbursement/DisbursementVoucher");
		mav.addObject("dropDown", dropDown);
		mav.addObject("dropDown2", dropDown2);
		mav.addObject("dropDown3", dropDown3);
		mav.addObject("dropDown4", dropDown4);
		mav.addObject("dropDown5", dropDown5);
		mav.addObject("dropDown6", dropDown6);
		mav.addObject("dropDown7", dropDown7);
		return mav;

	}

	public List<DVModel> dropDown() {
		return dvd.dropDownPurpose();
	}

	public List<DVModel> dropDown2() {
		return dvd.dropDownPayment();
	}

	public List<DVModel> dropDown3() {
		return dvd.dropDownInstitute();
	}

	public List<DVModel> dropDown4() {
		return dvd.dropDownClaimant();
	}

	public List<DVModel> dropDown5() {
		return dvd.dropDownFund();
	}

	public List<DVModel> dropDown6() {
		return dvd.dropDownEmployee();
	}

	public List<DVModel> dropDown7() {
		return dvd.dropDownRespCenter();
	}

	@RequestMapping("dv_save")
	public ModelAndView mav(@ModelAttribute("insert") DVModel dvm,
			@RequestParam(value = "submit", required = false) String submit) {

		ModelAndView mav = new ModelAndView();
		if (submit != null) {

			dvd.submit(dvm);
		}
		mav.setViewName("Disbursement/DisbursementVoucher");
		return mav;
	}
}
