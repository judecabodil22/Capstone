package financials.model;

import java.sql.Date;

public class C_TransactionsModel {
	
	private String C_Type;
	
	private int col_transid;
	private String col_ORno;
	private String col_IGPname;
	private String col_institune_name;
	private String col_desc;
	private String col_amount;
	private Date col_idate;
	private Date col_duedate;
	private String col_stat;
	
	public int getCol_transid() {
		return col_transid;
	}
	public void setCol_transid(int col_transid) {
		this.col_transid = col_transid;
	}
	public String getCol_ORno() {
		return col_ORno;
	}
	public void setCol_ORno(String col_ORno) {
		this.col_ORno = col_ORno;
	}
	public String getCol_IGPname() {
		return col_IGPname;
	}
	public void setCol_IGPname(String col_IGPname) {
		this.col_IGPname = col_IGPname;
	}
	public String getCol_institune_name() {
		return col_institune_name;
	}
	public void setCol_institune_name(String col_institune_name) {
		this.col_institune_name = col_institune_name;
	}
	public String getCol_desc() {
		return col_desc;
	}
	public void setCol_desc(String col_desc) {
		this.col_desc = col_desc;
	}
	public String getCol_amount() {
		return col_amount;
	}
	public void setCol_amount(String col_amount) {
		this.col_amount = col_amount;
	}
	public Date getCol_idate() {
		return col_idate;
	}
	public void setCol_idate(Date col_idate) {
		this.col_idate = col_idate;
	}
	public Date getCol_duedate() {
		return col_duedate;
	}
	public void setCol_duedate(Date col_duedate) {
		this.col_duedate = col_duedate;
	}
	public String getC_Type() {
		return C_Type;
	}
	public void setC_Type(String c_Type) {
		C_Type = c_Type;
	}
	public String getCol_stat() {
		return col_stat;
	}
	public void setCol_stat(String col_stat) {
		this.col_stat = col_stat;
	}
	
	
	
	
	

		
		
}
