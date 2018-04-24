package financials.model;

import java.util.Date;

public class financials_ap_listModel {
	
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
	
	//DISB
	private String dv_id;
	private String dv_no;
	private String dv_date;
	private String dv_mop;
	private String dv_payee;
	private String dv_address;
	private String dv_amount;
	
	//JEV_INFO
	public String getJev_id() {
		return jev_id;
	}

	public void setJev_id(String jev_id) {
		this.jev_id = jev_id;
	}

	public Date getJev_date() {
		return jev_date;
	}

	public void setJev_date(Date jev_date) {
		this.jev_date = jev_date;
	}

	public String getJev_no() {
		return jev_no;
	}

	public void setJev_no(String jev_no) {
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
	
	//DISB
	public String getDv_id() {
		return dv_id;
	}

	public void setDv_id(String dv_id) {
		this.dv_id = dv_id;
	}

	public String getDv_no() {
		return dv_no;
	}

	public void setDv_no(String dv_no) {
		this.dv_no = dv_no;
	}

	public String getDv_date() {
		return dv_date;
	}

	public void setDv_date(String dv_date) {
		this.dv_date = dv_date;
	}

	public String getDv_mop() {
		return dv_mop;
	}

	public void setDv_mop(String dv_mop) {
		this.dv_mop = dv_mop;
	}

	public String getDv_payee() {
		return dv_payee;
	}

	public void setDv_payee(String dv_payee) {
		this.dv_payee = dv_payee;
	}

	public String getDv_address() {
		return dv_address;
	}

	public void setDv_address(String dv_address) {
		this.dv_address = dv_address;
	}

	public String getDv_amount() {
		return dv_amount;
	}

	public void setDv_amount(String dv_amount) {
		this.dv_amount = dv_amount;
	}

}