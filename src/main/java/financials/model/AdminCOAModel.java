package financials.model;

public class AdminCOAModel
{
	private int Code;
	private String Description;
	private int Account_Flag;
	private int Active_Flag;
	private int Parent;
	public int getCode() {
		return Code;
	}
	public void setCode(int code) {
		Code = code;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public int getAccount_Flag() {
		return Account_Flag;
	}
	public void setAccount_Flag(int account_Flag) {
		Account_Flag = account_Flag;
	}
	public int getActive_Flag() {
		return Active_Flag;
	}
	public void setActive_Flag(int active_Flag) {
		Active_Flag = active_Flag;
	}
	public int getParent() {
		return Parent;
	}
	public void setParent(int parent) {
		Parent = parent;
	}
}
