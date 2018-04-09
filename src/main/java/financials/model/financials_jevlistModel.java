package financials.model;

import java.util.Date;

public class financials_jevlistModel {
	
	private int jev_id;
	private Date jev_date;
	private String jev_no;
	private String jev_trans_type;
	private String tot_db;
	private String tot_cr;
	private String jev_creator;
	private String jev_remarks;
	private String tstat_name;
	private String jev_checker;
	private String jev_checker_remarks;
	
	public int getJev_id() {
		return jev_id;
	}
	
	public void setJev_id (int jev_id) {
		this.jev_id = jev_id;
	}
	
	public Date getJev_date() {
		return jev_date;
	}
	
	public void setJev_date (Date jev_date) {
		this.jev_date = jev_date;
	}
	
	public String getJev_no() {
		return jev_no;
	}
	
	public void setJev_no (String jev_no) {
		this.jev_no = jev_no;
	}

	public String getJev_trans_type() {
		return jev_trans_type;
	}

	public void setJev_trans_type(String jev_trans_type) {
		this.jev_trans_type = jev_trans_type;
	}

	public String getTot_db() {
		return tot_db;
	}

	public void setTot_db(String tot_db) {
		this.tot_db = tot_db;
	}

	public String getTot_cr() {
		return tot_cr;
	}

	public void setTot_cr(String tot_cr) {
		this.tot_cr = tot_cr;
	}
	
	public String getJev_creator() {
		return jev_creator;
	}
	
	public void setJev_creator (String jev_creator) {
		this.jev_creator = jev_creator;
	}
	
	public String getJev_remarks() {
		return jev_remarks;
	}
	
	public void setJev_remarks (String jev_remarks) {
		this.jev_remarks = jev_remarks;
	}
	
	public String getTstat_name() {
		return tstat_name;
	}
	
	public void setTstat_name (String tstat_name) {
		this.tstat_name = tstat_name;
	}

	public String getJev_checker() {
		return jev_checker;
	}

	public void setJev_checker(String jev_checker) {
		this.jev_checker = jev_checker;
	}

	public String getJev_checker_remarks() {
		return jev_checker_remarks;
	}

	public void setJev_checker_remarks(String jev_checker_remarks) {
		this.jev_checker_remarks = jev_checker_remarks;
	}

}