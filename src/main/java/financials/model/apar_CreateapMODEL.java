package financials.model;

public class apar_CreateapMODEL {
	
	private Integer ap_uid;
	private String ap_transaction_num;
	private String ap_company_name;
	private String ap_claimant;
	private Integer resp_center_uid;
	private String resp_center_description;
	private String ap_voucher_date;
	private String  ap_due_date;
	private Integer ap_amount;
	private Integer acc_uid;
	private String acc_description;
	private String ap_particulars;
	private String ap_status;

	
	public Integer getAp_uid() {
		return ap_uid;
	}
	public void setAp_uid(Integer ap_uid) {
		this.ap_uid = ap_uid;
	}
	public String getAp_company_name() {
		return ap_company_name;
	}
	public void setAp_company_name(String ap_company_name) {
		this.ap_company_name = ap_company_name;
	}
	public String getAp_claimant() {
		return ap_claimant;
	}
	public void setAp_claimant(String ap_claimant) {
		this.ap_claimant = ap_claimant;
	}
	public String getAp_voucher_date() {
		return ap_voucher_date;
	}
	public void setAp_voucher_date(String ap_voucher_date) {
		this.ap_voucher_date = ap_voucher_date;
	}
	public String getAp_due_date() {
		return ap_due_date;
	}
	public void setAp_due_date(String ap_due_date) {
		this.ap_due_date = ap_due_date;
	}
	public Integer getAp_amount() {
		return ap_amount;
	}
	public void setAp_amount(Integer ap_amount) {
		this.ap_amount = ap_amount;
	}
	public String getAp_particulars() {
		return ap_particulars;
	}
	public void setAp_particulars(String ap_particulars) {
		this.ap_particulars = ap_particulars;
	}
	public String getAp_status() {
		return ap_status;
	}
	public void setAp_status(String ap_status) {
		this.ap_status = ap_status;
	}
	public String getResp_center_description() {
		return resp_center_description;
	}
	public void setResp_center_description(String resp_center_description) {
		this.resp_center_description = resp_center_description;
	}
	public Integer getResp_center_uid() {
		return resp_center_uid;
	}
	public void setResp_center_uid(Integer resp_center_uid) {
		this.resp_center_uid = resp_center_uid;
	}
	public Integer getAcc_uid() {
		return acc_uid;
	}
	public void setAcc_uid(Integer acc_uid) {
		this.acc_uid = acc_uid;
	}
	public String getAcc_description() {
		return acc_description;
	}
	public void setAcc_description(String acc_description) {
		this.acc_description = acc_description;
	}
	public String getAp_transaction_num() {
		return ap_transaction_num;
	}
	public void setAp_transaction_num(String ap_transaction_num) {
		this.ap_transaction_num = ap_transaction_num;
	}
}
