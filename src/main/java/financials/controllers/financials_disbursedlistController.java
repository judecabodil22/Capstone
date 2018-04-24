package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_disbursedlistDAO;
import financials.model.financials_disbursedlistModel;

@Controller
public class financials_disbursedlistController {
	
	@Autowired
	financials_disbursedlistDAO DVTDAO;

	@RequestMapping("financials_disbursement_list") //url
	public ModelAndView dsbl()
	{
		ModelAndView dsblst = new ModelAndView();
		dsblst.addObject("disb_list", getDisb_list());
		dsblst.setViewName("Disbursement/financials_disbursedlist");//directory
		return dsblst;
	}

	public List<financials_disbursedlistModel> getDisb_list() {
		return DVTDAO.getDisblist();
	}
}