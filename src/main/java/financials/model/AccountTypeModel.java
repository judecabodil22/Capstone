package financials.model;

public class AccountTypeModel {
	
	private int acc_uid;
	private String acc_code;
	private String acc_description;
	private int acc_parent_uid;
	
	private String Parent;
	
	public int getAcc_uid() {
		return acc_uid;
	}
	public void setAcc_uid(int acc_uid) {
		this.acc_uid = acc_uid;
	}
	public String getAcc_code() {
		return acc_code;
	}
	public void setAcc_code(String acc_code) {
		this.acc_code = acc_code;
	}
	public String getAcc_description() {
		return acc_description;
	}
	public void setAcc_description(String acc_description) {
		this.acc_description = acc_description;
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

}
