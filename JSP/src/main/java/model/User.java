package model;

public class User {
	private int userId;
	  private String userName;
	  private String password;
	  private long phone;
	  private String address;
	  private String emailId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public User(int userId, String userName, String password, long phone, String address, String emailId) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.emailId = emailId;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	  
}
