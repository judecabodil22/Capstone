package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.financials_gledgerDAO;
import financials.model.financials_gledgerModel;

@Controller
public class financials_gledgerController {
	
	@Autowired
	financials_gledgerDAO glDAO;
	
	@RequestMapping("financials_general_ledger")//url
	public ModelAndView fgledger()
	{
		ModelAndView fgl = new ModelAndView();
		fgl.setViewName("GLedger/financials_gledger");//directory
		List<financials_gledgerModel> Petty_cash = getPetty_cash();
		fgl.addObject("pettycash", Petty_cash);
		return fgl;
	}	
	private List<financials_gledgerModel> getPetty_cash() {
		return glDAO.getPetty_cash();
	}

}





