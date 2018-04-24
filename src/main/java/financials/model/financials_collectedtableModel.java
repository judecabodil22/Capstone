package financials.model;

import java.util.Date;

public class financials_collectedtableModel {
	
	private String col_id;
	private Date   col_date;
	private String col_no;
	private String col_type;
	private String col_payer;
	private String col_desc;
	private String col_amt;
	
	public String getCol_id() {
		return col_id;
	}
	public void setCol_id(String col_id) {
		this.col_id = col_id;
	}
	public Date getCol_date() {
		return col_date;
	}
	public void setCol_date(Date col_date) {
		this.col_date = col_date;
	}
	public String getCol_no() {
		return col_no;
	}
	public void setCol_no(String col_no) {
		this.col_no = col_no;
	}
	public String getCol_type() {
		return col_type;
	}
	public void setCol_type(String col_type) {
		this.col_type = col_type;
	}
	public String getCol_payer() {
		return col_payer;
	}
	public void setCol_payer(String col_payer) {
		this.col_payer = col_payer;
	}
	public String getCol_desc() {
		return col_desc;
	}
	public void setCol_desc(String col_desc) {
		this.col_desc = col_desc;
	}
	public String getCol_amt() {
		return col_amt;
	}
	public void setCol_amt(String col_amt) {
		this.col_amt = col_amt;
	}

}