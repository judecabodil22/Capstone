package financials.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.liquidationDAO;
import financials.model.DisbursementSampleModel;
import financials.model.liquidationModel;

@Controller
public class LiquidationReportController {

	@Autowired
	liquidationDAO lqdao;

	@RequestMapping("liquidation")
	public ModelAndView view(@ModelAttribute("enter") liquidationModel liqModel) {

		ModelAndView liquidation = new ModelAndView();
		liquidation.addObject("dis", "Disbursement");
		liquidation.setViewName("Disbursement/LiquidationReport");
		return liquidation;

	}

	@RequestMapping("done")
	public ModelAndView see(@ModelAttribute("enter") liquidationModel liqModel,
			@RequestParam(value = "submit", required = false) String done,
			@RequestParam(value = "reset", required = false) String reset) {

		ModelAndView liquidation = new ModelAndView();
		if (done != null) {

			lqdao.submit(liqModel);
		}
		
		else if (reset != null) {
			lqdao.reset(liqModel);
		}
		
		liquidation.setViewName("Disbursement/LiquidationReport");
		return liquidation;
	}
}
