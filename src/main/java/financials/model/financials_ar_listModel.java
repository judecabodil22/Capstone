package financials.model;

import java.util.Date;

public class financials_ar_listModel {
	
	//JEV_INFO
	private String jev_id;
	private String jev_no;
	private Date   jev_date;
	private String jev_trans_type;
	private String tot_db;
	private String tot_cr;
	private String jev_creator;
	private String jev_remarks;
	private String tstat_name;
	private String jev_cdn;
	
	//JEV_DETAILS
	private String jevd_id;
	private String resp_name;
	private String dbcoa_name;
	private String jevd_dbamt;
	private String crcoa_name;
	private String jevd_cramt;
	private String jevd_expl;
	
	//COL
	private String col_id;
	private String col_no;
	private String col_date;
	private String col_type;
	private String col_payer;
	private String col_desc;
	private String col_amt;
	
	//JEV_INFO
	public String getJev_id() {
		return jev_id;
	}
	public void setJev_id(String jev_id) {
		this.jev_id = jev_id;
	}
	public String getJev_no() {
		return jev_no;
	}
	public void setJev_no(String jev_no) {
		this.jev_no = jev_no;
	}
	public Date getJev_date() {
		return jev_date;
	}
	public void setJev_date(Date jev_date) {
		this.jev_date = jev_date;
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
	public void setJev_creator(String jev_creator) {
		this.jev_creator = jev_creator;
	}
	public String getJev_remarks() {
		return jev_remarks;
	}
	public void setJev_remarks(String jev_remarks) {
		this.jev_remarks = jev_remarks;
	}
	public String getTstat_name() {
		return tstat_name;
	}
	public void setTstat_name(String tstat_name) {
		this.tstat_name = tstat_name;
	}
	public String getJev_cdn() {
		return jev_cdn;
	}
	public void setJev_cdn(String jev_cdn) {
		this.jev_cdn = jev_cdn;
	}
	
	//JEV_DETAILS
	public String getJevd_id() {
		return jevd_id;
	}
	public void setJevd_id(String jevd_id) {
		this.jevd_id = jevd_id;
	}
	public String getResp_name() {
		return resp_name;
	}
	public void setResp_name(String resp_name) {
		this.resp_name = resp_name;
	}
	public String getDbcoa_name() {
		return dbcoa_name;
	}
	public void setDbcoa_name(String dbcoa_name) {
		this.dbcoa_name = dbcoa_name;
	}
	public String getJevd_dbamt() {
		return jevd_dbamt;
	}
	public void setJevd_dbamt(String jevd_dbamt) {
		this.jevd_dbamt = jevd_dbamt;
	}
	public String getCrcoa_name() {
		return crcoa_name;
	}
	public void setCrcoa_name(String crcoa_name) {
		this.crcoa_name = crcoa_name;
	}
	public String getJevd_cramt() {
		return jevd_cramt;
	}
	public void setJevd_cramt(String jevd_cramt) {
		this.jevd_cramt = jevd_cramt;
	}
	public String getJevd_expl() {
		return jevd_expl;
	}
	public void setJevd_expl(String jevd_expl) {
		this.jevd_expl = jevd_expl;
	}
	
	//COL
	public String getCol_id() {
		return col_id;
	}
	public void setCol_id(String col_id) {
		this.col_id = col_id;
	}
	public String getCol_date() {
		return col_date;
	}
	public void setCol_date(String col_date) {
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