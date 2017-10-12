package financials.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import financials.dao.DisbursementDAO;
import financials.model.DisbursementSampleModel;
import financials.model.UserModel;

@Controller
public class DisbursementSample {
	@Autowired
	DisbursementDAO ddao;

	@RequestMapping("d_disbursement")
	public ModelAndView d_view(@ModelAttribute("insert") DisbursementSampleModel dsm) {
		
		
		List<DisbursementSampleModel> userList = listUser();
		ModelAndView disburse = new ModelAndView();
		disburse.addObject("dis", "Disbursement");
		disburse.setViewName("Disbursement/Disburse");
		disburse.addObject("userList", userList);
		return disburse;

	}
	
	public List<DisbursementSampleModel> listUser() {
		return ddao.getUsers();
	}
	
	@RequestMapping("d_save")
	public ModelAndView d_look(@ModelAttribute("insert") DisbursementSampleModel dsm,
			@RequestParam(value = "save", required = false) String save,
			@RequestParam(value = "update", required = false)String update,
			@RequestParam(value = "delete", required = false)String delete,
			@RequestParam(value = "select", required = false)String select,
			@RequestParam(value = "findByID", required = false)String id)
			
			
			{
			ModelAndView disburse = new ModelAndView();
			if(save != null) {
		
			ddao.insert(dsm);
			List<DisbursementSampleModel> userList = ddao.getUsers();
			disburse.addObject("userList", userList);
		
		}
		
		else if (update != null) {
			ddao.update(dsm);
			List<DisbursementSampleModel> userList = ddao.getUsers();
			disburse.addObject("userList", userList);
		}
		
		else if (delete != null) {
			ddao.delete(dsm);
			List<DisbursementSampleModel> userList = ddao.getUsers();
			disburse.addObject("userList", userList);
		}
		
		else if (select != null) {
			ddao.getUsers();
		}
		
		else if (id != null) {
			List<DisbursementSampleModel> userList = ddao.findByIDList(dsm);
				disburse.addObject("userList", userList);
			}
			
			
		disburse.addObject("dis", "Disbursement");
		disburse.setViewName("Disbursement/Disburse");
		return disburse;

	}
	

}
