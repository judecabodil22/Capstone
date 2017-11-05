package financials.model;

public class ApiModel {
	
	private Integer statusCode;
	private String message;
	private Object data;
	
	public ApiModel() {

	}

	public ApiModel(Integer statusCode, String message, Object data) {
	    super();
	    this.statusCode = statusCode;
	    this.message = message;
	    this.data = data;
    }

	/**
	 * @return the statusCode
	 */
	public Integer getStatusCode() {
		return statusCode;
	}

	/**
	 * @param statusCode the statusCode to set
	 */
	public void setStatusCode(Integer statusCode) {
		this.statusCode = statusCode;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the data
	 */
	public Object getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(Object data) {
		this.data = data;
	}
}
