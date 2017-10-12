package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.tblreportsDAO;
import financials.model.DVModel;
import financials.model.UserModel;
import financials.model.tblreportsModel;

@Controller
public class tblreportsController {

	@Autowired
	tblreportsDAO tbd;
	
	@RequestMapping("table_reports")
	public ModelAndView mav(@ModelAttribute("insert") tblreportsModel trm) {
		List<tblreportsModel> dvList = listDV();
		ModelAndView mav = new ModelAndView();
		mav.addObject("dis", "Disbursement");
		mav.setViewName("Disbursement/TableReports");
		mav.addObject("dvList", dvList);
		return mav;

	}
	public List<tblreportsModel> listDV() {
		return tbd.getDV();
	}
}
