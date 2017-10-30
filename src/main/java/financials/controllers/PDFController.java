package financials.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import financials.pdf.Book;
import financials.pdf.TrialBalanceModel;

/**
 * A Spring controller that allows the users to download a PDF document
 * generated by the iText library.
 * 
 * @author www.codejava.net
 * 
 */
@Controller
public class PDFController {

	/**
	 * Handle request to the default page
	 */
	@RequestMapping(value = "PDF", method = RequestMethod.GET)
	public String viewHome() {
		return "pdf/home";
	}

	/**
	 * Handle request to download a PDF document 
	 */
	@RequestMapping(value = "downloadPDF", method = RequestMethod.GET)
	public ModelAndView downloadExcel() {
		// create some sample data
		List<Book> listBooks = new ArrayList<Book>();
		listBooks.add(new Book("Spring in Action", "Craig Walls", "1935182358",
				"June 29th 2011", 31.98F));
		listBooks.add(new Book("Spring in Practice", "Willie Wheeler, Joshua White",
				"1935182056", "May 16th 2013", 31.95F));
		listBooks.add(new Book("Pro Spring 3",
				"Clarence Ho, Rob Harrop", "1430241071", "April 18th 2012", 31.85F));
		listBooks.add(new Book("Spring Integration in Action", "Mark Fisher", "1935182439",
				"September 26th 2012", 28.73F));

		// return a view which will be resolved by an excel view resolver
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pdfView");
		mav.addObject("list", listBooks);
		mav.addObject("report", "demo");
		return mav;
	}
	
	/**
	 * Handle request to download a PDF document 
	 */
	@RequestMapping(value = "PDFUATB", method = RequestMethod.GET)
	public ModelAndView downloadPDFUATB() {
		List<TrialBalanceModel> list = new ArrayList<TrialBalanceModel>();
		
		TrialBalanceModel model = new TrialBalanceModel();
		
		list.add(model.Debit("Cash in hand", 4500));
		list.add(new TrialBalanceModel("Cash at bank", 3700, 0));
		list.add(new TrialBalanceModel("Account receivables", 2500, 0));
		list.add(new TrialBalanceModel("Prepaid rent", 1500, 0));
		list.add(new TrialBalanceModel("Furniture", 2700, 0));
		list.add(new TrialBalanceModel("Machinery", 4000, 0));
		list.add(new TrialBalanceModel("Land", 5000, 0));
		list.add(new TrialBalanceModel("Supplies expenses", 2600, 0));
		list.add(new TrialBalanceModel("Advertisement expenses", 1200, 0));
		list.add(new TrialBalanceModel("Salaries expense", 500, 0));
		
		list.add(model.Credit("Account payable", 1000));
		list.add(new TrialBalanceModel("Notes payable", 0, 2000));
		list.add(new TrialBalanceModel("Accumulated depreciation", 0, 500));
		list.add(new TrialBalanceModel("Allowance for bad debts", 0, 100));
		list.add(new TrialBalanceModel("Bank borrowings", 0, 2000));
		list.add(new TrialBalanceModel("Capital", 0, 18000));
		list.add(new TrialBalanceModel("Revenue", 0, 3800));
		list.add(new TrialBalanceModel("Commision received", 0, 800));
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pdfView");
		mav.addObject("list", list);
		mav.addObject("report", "PDFUATB");
		return mav;
	}
}