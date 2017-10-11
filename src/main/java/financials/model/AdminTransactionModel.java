package financials.model;

public class AdminTransactionModel {
	
	private int trans_transaction_type_uid;
	private String trans_code;
	private String trans_description;
	private int trans_transaction_parent_uid;
	private String parent;
	
	
	public int getTrans_transaction_type_uid() {
		return trans_transaction_type_uid;
	}
	public void setTrans_transaction_type_uid(int trans_transaction_type_uid) {
		this.trans_transaction_type_uid = trans_transaction_type_uid;
	}
	public String getTrans_code() {
		return trans_code;
	}
	public void setTrans_code(String trans_code) {
		this.trans_code = trans_code;
	}
	public String getTrans_description() {
		return trans_description;
	}
	public void setTrans_description(String trans_description) {
		this.trans_description = trans_description;
	}
	public int getTrans_transaction_parent_uid() {
		return trans_transaction_parent_uid;
	}
	public void setTrans_transaction_parent_uid(int trans_transaction_parent_uid) {
		this.trans_transaction_parent_uid = trans_transaction_parent_uid;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}

}
