package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_collectedtableDAO;
import financials.model.financials_collectedtableModel;

@Controller
public class financials_collectedtableController {
	
	@Autowired
	financials_collectedtableDAO CTDAO;

	@RequestMapping("financials_collection_list") //url
	public ModelAndView coll()
	{
		ModelAndView collst = new ModelAndView();
		collst.addObject("col_list", getCol_list());
		collst.setViewName("Collections/financials_collectedtable");//directory
		return collst;
	}

	public List<financials_collectedtableModel> getCol_list() {
		return CTDAO.getCollist();
	}

}