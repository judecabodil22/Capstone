package financials.model;

public class AdminFundModel {

	private int fund_uid;
	private int fund_code;
	private String fund_description;
	public int getFund_uid() {
		return fund_uid;
	}
	public void setFund_uid(int fund_uid) {
		this.fund_uid = fund_uid;
	}
	public int getFund_code() {
		return fund_code;
	}
	public void setFund_code(int fund_code) {
		this.fund_code = fund_code;
	}
	public String getFund_description() {
		return fund_description;
	}
	public void setFund_description(String fund_description) {
		this.fund_description = fund_description;
	}
}
	