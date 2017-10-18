package financials.model;

public class UserModel {
	
	private Integer user_id;
	private String username;
	private String password;
	
	
	public UserModel() {

	}

	public UserModel(Integer user_id, String username, String password) {
		this.user_id = user_id;
		this.username = username;
		this.password = password;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public Integer setUser_id(Integer user_id) {
		return this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
