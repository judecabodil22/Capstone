package financials.model;

import java.sql.Array;

public class financials_cjevModel {
	
	//JEV_INFO PART I
	private int jev_id;
	private String jev_no;
	private String jev_date;
	private String jev_trans_type;
	private String tot_dbamt;
	private String tot_cramt;
	private String jev_creator;
	private String jev_remarks;
	private String tstat_name;
	
	//JEV_DETAILS PART II
	private String jevd_id;
	/*private String resp_center_description;*/
	/*private String coa_description;*/
	private String dbcoa_name[];
	private String resp_center_description;
	private String resp_name[];
	private String coa_description;
	private String jevd_dbamt[];
	private String crcoa_name[];
	private String jevd_cramt[];
	private String jevd_expl[];
	
	private Array JevDetails;
	private Array JevSupportingDocu;
	
	//JEV SUPPORTING DOCU PART III
	private String jevsd_id;
	private String jevsd_type[];
	private String jevsd_value[];
	private String jevsd_date[];
	
	//part i
	public int getJev_id() {
		return jev_id;
	}
	public int setJev_id(int jev_id) {
		return this.jev_id = jev_id;
	}
	public String getJev_no() {
		return jev_no;
	}
	public void setJev_no(String jev_no) {
		this.jev_no = jev_no;
	}
	public String getJev_date() {
		return jev_date;
	}
	public void setJev_date(String jev_date) {
		this.jev_date = jev_date;
	}
	public String getJev_trans_type() {
		return jev_trans_type;
	}
	public void setJev_trans_type(String jev_trans_type) {
		this.jev_trans_type = jev_trans_type;
	}
	public String getTot_dbamt() {
		return tot_dbamt;
	}
	public void setTot_dbamt(String tot_dbamt) {
		this.tot_dbamt = tot_dbamt;
	}
	public String getTot_cramt() {
		return tot_cramt;
	}
	public void setTot_cramt(String tot_cramt) {
		this.tot_cramt = tot_cramt;
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
	
	//part ii
	public String getJevd_id() {
		return jevd_id;
	}

	public void setJevd_id(String jevd_id) {
		this.jevd_id = jevd_id;
	}
	
	public String getResp_center_description() {
		return resp_center_description;
	}

	public void setResp_center_description(String resp_center_description) {
		this.resp_center_description = resp_center_description;
	}
	public String[] getDbcoa_name() {
		return dbcoa_name;
	}
	public void setDbcoa_name(String[] dbcoa_name) {
		this.dbcoa_name = dbcoa_name;
	}
	public String[] getJevd_dbamt() {
		return jevd_dbamt;
	}
	public void setJevd_dbamt(String[] jevd_dbamt) {
		this.jevd_dbamt = jevd_dbamt;
	}
	public String[] getCrcoa_name() {
		return crcoa_name;
	}
	public void setCrcoa_name(String[] crcoa_name) {
		this.crcoa_name = crcoa_name;
	}
	public String[] getJevd_cramt() {
		return jevd_cramt;
	}
	public void setJevd_cramt(String[] jevd_cramt) {
		this.jevd_cramt = jevd_cramt;
	}
	public String[] getJevd_expl() {
		return jevd_expl;
	}
	public void setJevd_expl(String[] jevd_expl) {
		this.jevd_expl = jevd_expl;
	}
	
	//part iii
	public String getJevsd_id() {
		return jevsd_id;
	}
	public void setJevsd_id(String jevsd_id) {
		this.jevsd_id = jevsd_id;
	}
	public String[] getJevsd_type() {
		return jevsd_type;
	}
	public void setJevsd_type(String[] jevsd_type) {
		this.jevsd_type = jevsd_type;
	}
	public String[] getJevsd_value() {
		return jevsd_value;
	}
	public void setJevsd_value(String[] jevsd_value) {
		this.jevsd_value = jevsd_value;
	}
	public String[] getJevsd_date() {
		return jevsd_date;
	}
	public void setJevsd_date(String[] jevsd_date) {
		this.jevsd_date = jevsd_date;
	}
	public String[] getResp_name() {
		return resp_name;
	}
	public void setResp_name(String[] resp_name) {
		this.resp_name = resp_name;
	}
	public String getCoa_description() {
		return coa_description;
	}
	public void setCoa_description(String coa_description) {
		this.coa_description = coa_description;
	}
	public Array getJevDetails() {
		return JevDetails;
	}
	public void setJevDetails(Array jevDetails) {
		JevDetails = jevDetails;
	}
	public Array getJevSupportingDocu() {
		return JevSupportingDocu;
	}
	public void setJevSupportingDocu(Array jevSupportingDocu) {
		JevSupportingDocu = jevSupportingDocu;
	}
	
	
	
	
	
	
}
	
	
	
	
	