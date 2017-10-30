package financials.pdf;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.awt.geom.Rectangle;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * This view class generates a PDF document 'on the fly' based on the data
 * contained in the model.
 * @author www.codejava.net
 *
 */
public class PDFBuilder extends AbstractITextPdfView {

	private DecimalFormat formatter = new DecimalFormat("#,###.00");
	
	@Override
	protected void buildPdfDocument(
			Map<String, Object> model, 
			Document doc,
			PdfWriter writer, 
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {
		
		String report = model.get("report").toString();
		if("PDFUATB".equals(report)){
			this.PDFUATB(model, doc, writer, request, response);
		}
		else {
			this.demo(model, doc, writer, request, response);
		}
	}
	
	
	private void demo(
			Map<String, Object> model, 
			Document doc,
			PdfWriter writer, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		// get data model which is passed by the Spring container
		@SuppressWarnings("unchecked")
		List<Book> list = (List<Book>) model.get("list");
		
		doc.add(new Paragraph("Recommended books for Spring framework"));
		
		PdfPTable table = new PdfPTable(5);
		table.setWidthPercentage(100.0f);
		table.setWidths(new float[] {3.0f, 2.0f, 2.0f, 2.0f, 1.0f});
		table.setSpacingBefore(10);
		
		// define font for table header row
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(BaseColor.WHITE);
		
		// define table header cell
		PdfPCell cell = new PdfPCell();
		cell.setBackgroundColor(BaseColor.BLUE);
		cell.setPadding(5);
		
		// write table header 
		cell.setPhrase(new Phrase("Book Title", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Author", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("ISBN", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Published Date", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Price", font));
		table.addCell(cell);
		
		// write table row data
		for (Book aBook : list) {
			table.addCell(aBook.getTitle());
			table.addCell(aBook.getAuthor());
			table.addCell(aBook.getIsbn());
			table.addCell(aBook.getPublishedDate());
			table.addCell(String.valueOf(aBook.getPrice()));
		}
		
		doc.add(table);
	}
	
	/**
	 * Unadjusted Trial Balance
	 */
	private void PDFUATB(
			Map<String, Object> model, 
			Document doc,
			PdfWriter writer, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		// get data model which is passed by the Spring container
		@SuppressWarnings("unchecked")
		List<TrialBalanceModel> list = (List<TrialBalanceModel>) model.get("list");
		
		doc.add(new Paragraph("Financials Trial Balance"));
		
		PdfPTable table = new PdfPTable(3); // number of columns
		table.setWidthPercentage(100.0f);
		table.setWidths(new float[] {6.0f, 2.0f, 2.0f});
		table.setSpacingBefore(10);
		
		// define font for table header row
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(BaseColor.WHITE);
		
		// define table header cell
		PdfPCell cell = new PdfPCell();
		cell.setBorder(0);
		cell.setBackgroundColor(BaseColor.BLUE);
		cell.setPadding(5);
		
		// write table header 
		cell.setPhrase(new Phrase("Account", font));
		table.addCell(cell);
		
		cell.setHorizontalAlignment(PdfPCell.ALIGN_RIGHT);
		cell.setPhrase(new Phrase("Debit ($)", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Credit ($)", font));
		table.addCell(cell);
		
		float totalDebit = 0;
		float totalCredit = 0;
		
		cell.setBorder(0);
		cell.setBackgroundColor(BaseColor.WHITE);
		
		// write table row data
		for (TrialBalanceModel rec : list) {
			cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
			cell.setPhrase(new Phrase(rec.getAccountName()));
			table.addCell(cell);
			
			cell.setHorizontalAlignment(PdfPCell.ALIGN_RIGHT);
			cell.setPhrase(new Phrase(this.format(rec.getDebit())));
			table.addCell(cell);
			
			cell.setPhrase(new Phrase(this.format(rec.getCredit())));
			table.addCell(cell);
			
			totalDebit += rec.getDebit();
			totalCredit += rec.getCredit();
		}
		
		// add empty row
		cell.setPhrase(new Phrase(" "));
		cell.setBorder(Rectangle.OUT_TOP);
		table.addCell(cell);
		table.addCell(cell);
		table.addCell(cell);
		cell.setBorder(0);
		
		// write total
		cell.setPhrase(new Phrase("Total"));
		table.addCell(cell);
		
		font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setStyle(Font.UNDERLINE);
		cell.setPhrase(new Phrase(this.format(totalDebit), font));
		table.addCell(cell);
		
		
		
		cell.setPhrase(new Phrase(this.format(totalCredit), font));
		table.addCell(cell);
		
		doc.add(table);
	}
	
	
	private String format(float value){
		String str = null;
		if(value == 0) return str;
		
		return this.formatter.format(value);
	}
}