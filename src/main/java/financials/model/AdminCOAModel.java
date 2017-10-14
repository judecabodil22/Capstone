package financials.model;

public class AdminCOAModel {
	
	private int coa_account_uid;
	private int coa_code;
	private String coa_description;
	private int coa_account_flag;
	private int coa_active_flag;
	
	private int acc_parent_uid;
	private String acc_description;
	
	
	private String Parent;
	
	public int getCoa_account_uid() {
		return coa_account_uid;
	}
	public void setCoa_account_uid(int coa_account_uid) {
		this.coa_account_uid = coa_account_uid;
	}
	public int getCoa_code() {
		return coa_code;
	}
	public void setCoa_code(int coa_code) {
		this.coa_code = coa_code;
	}
	public String getCoa_description() {
		return coa_description;
	}
	public void setCoa_description(String coa_description) {
		this.coa_description = coa_description;
	}
	public int getCoa_account_flag() {
		return coa_account_flag;
	}
	public void setCoa_account_flag(int coa_account_flag) {
		this.coa_account_flag = coa_account_flag;
	}
	public int getCoa_active_flag() {
		return coa_active_flag;
	}
	public void setCoa_active_flag(int coa_active_flag) {
		this.coa_active_flag = coa_active_flag;
	}
	public int getAcc_parent_uid() {
		return acc_parent_uid;
	}
	public void setAcc_parent_uid(int acc_parent_uid) {
		this.acc_parent_uid = acc_parent_uid;
	}
	public String getParent() {
		return Parent;
	}
	public void setParent(String parent) {
		Parent = parent;
	}
	public String getAcc_description() {
		return acc_description;
	}
	public void setAcc_description(String acc_description) {
		this.acc_description = acc_description;
	}
	
	

}
