package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.TVoucherDAO;
import financials.model.DVModel;
import financials.model.TVoucherModel;
import financials.model.tblreportsModel;

@Controller
public class TVoucherController {

	@Autowired
	TVoucherDAO tvdao;
	
	@RequestMapping("voucher_transaction")
	public ModelAndView mav(@ModelAttribute("insert") TVoucherModel tvm, 
			@ModelAttribute("dv_no") TVoucherModel tvm2,
			@ModelAttribute("purpose_name") TVoucherModel tvm3,
			@ModelAttribute("mode_of_payment") TVoucherModel tvm4,
			@ModelAttribute("fund_cluster") TVoucherModel tvm5,
			@ModelAttribute("responsibility_center") TVoucherModel tvm6,
			@ModelAttribute("ors_burs_no") TVoucherModel tvm7,
			@ModelAttribute("employee_assigned") TVoucherModel tvm8,
			@ModelAttribute("institute") TVoucherModel tvm9,
			@ModelAttribute("claimant_name") TVoucherModel tvm10,
			@ModelAttribute("dv_date") TVoucherModel tvm11,
			@ModelAttribute("address") TVoucherModel tvm12,
			@ModelAttribute("particulars") TVoucherModel tvm13,
			@ModelAttribute("mfo_pap") TVoucherModel tvm14,
			@ModelAttribute("dv_amount") TVoucherModel tvm15,
			@ModelAttribute("resp_center") TVoucherModel tvm16,
			@ModelAttribute("claim_name") TVoucherModel tvm17) {
		
		ModelAndView mav = new ModelAndView();
		List<TVoucherModel> dropDown = dropDown();
		List<TVoucherModel> dropDown2 = dropDown2();
		List<TVoucherModel> dropDown5 = dropDown5();
		List<TVoucherModel> dropDown6 = dropDown6();
		List<TVoucherModel> dropDown7 = dropDown7();
		mav.addObject("dis", "Disbursement");
		mav.setViewName("Disbursement/TransVoucher");
		mav.addObject("dropDown", dropDown);
		mav.addObject("dropDown2", dropDown2);
		mav.addObject("dropDown5", dropDown5);
		mav.addObject("dropDown6", dropDown6);
		mav.addObject("dropDown7", dropDown7);
		mav.addObject("pList", listPayable());
		return mav;

	}
	public List<TVoucherModel> listPayable() {
		return tvdao.getList();
	}
	
	public List<TVoucherModel> dropDown() {
		return tvdao.dropDownPurpose();
	}
	
	public List<TVoucherModel> dropDown2() {
		return tvdao.dropDownPayment();
	}
	
	public List<TVoucherModel> dropDown5() {
		return tvdao.dropDownFund();
	}
	
	public List<TVoucherModel> dropDown7() {
		return tvdao.dropDownRespCenter();
	}
	
	public List<TVoucherModel> dropDown6() {
		return tvdao.dropDownEmployee();
	}
	
	@RequestMapping("trans_save")
	public ModelAndView mav(@ModelAttribute("insert") TVoucherModel tvm,
			@RequestParam(value = "submit", required = false) String submit,
			@RequestParam(value = "update", required = false) String update) {

		ModelAndView mav = new ModelAndView();
		try {
			if (submit != null) {
	
				tvdao.submit(tvm);
				tvdao.update(tvm);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("Disbursement/TransVoucher");
		List<TVoucherModel> dropDown = dropDown();
		List<TVoucherModel> dropDown2 = dropDown2();
		List<TVoucherModel> dropDown5 = dropDown5();
		List<TVoucherModel> dropDown6 = dropDown6();
		List<TVoucherModel> dropDown7 = dropDown7();
		mav.addObject("dis", "Disbursement");
		mav.addObject("dropDown", dropDown);
		mav.addObject("dropDown2", dropDown2);
		mav.addObject("dropDown5", dropDown5);
		mav.addObject("dropDown6", dropDown6);
		mav.addObject("dropDown7", dropDown7);
		mav.addObject("pList", listPayable());
		return mav;
	}
}
