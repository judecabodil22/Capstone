package financials.model;

public class CodeNameModel {
	
	private Object code;
	private Object name;
	
	public CodeNameModel() {

	}

	public CodeNameModel(Object code, Object name) {
		this.code = code;
		this.name = name;
	}

	/**
	 * @return the code
	 */
	public Object getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(Object code) {
		this.code = code;
	}

	/**
	 * @return the name
	 */
	public Object getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(Object name) {
		this.name = name;
	}
}
