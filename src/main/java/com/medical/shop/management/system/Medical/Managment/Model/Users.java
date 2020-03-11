package com.medical.shop.management.system.Medical.Managment.Model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class Users {

	@NotEmpty(message = "username is required")
	private String username;
	@NotEmpty(message = "password not be less than 8 character")
	@Size(min = 8, max = 64)
	private String password;
	@NotEmpty(message = "name  is required")
	private String name;
	@NotEmpty(message = "Email is required")
	@Email
	private String emailId;
	@NotEmpty(message = "Phone number is required")
	@Pattern(regexp = "^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message = "Mobile number is invalid")
	private String contactNo;

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(@NotEmpty(message = "name is required") String username,
			@NotEmpty(message = "password not be less than 8 character") @Size(min = 8, max = 64) String password,
			@NotEmpty(message = "userId  is required") String name,
			@NotEmpty(message = "Email is required") @Email String emailId,
			@NotEmpty(message = "Phone number is required") @Pattern(regexp = "^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message = "Mobile number is invalid") String contactNo) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.emailId = emailId;
		this.contactNo = contactNo;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	@Override
	public String toString() {
		return "Users [username=" + username + ", password=" + password + ", name=" + name + ", emailId=" + emailId
				+ ", contactNo=" + contactNo + "]";
	}

}
