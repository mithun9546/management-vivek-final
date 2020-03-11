package com.medical.shop.management.system.Medical.Managment.Model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

public class Supplier {
	@NotEmpty(message = "supplierId  is required")
	private int supplier_id;
	@NotEmpty(message = "Supplier name is required")
	private String supplier_name;
	@NotEmpty(message = "Phone number is required")
	@Pattern(regexp = "^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message = "Mobile number is invalid")
	private String supplier_contact_no;
	@NotEmpty(message = "Email is required")
	@Email
	private String supplier_email_id;

	
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Supplier(int supplier_id, String supplier_name, String supplier_contact_no, String supplier_email_id) {
		super();
		this.supplier_id = supplier_id;
		this.supplier_name = supplier_name;
		this.supplier_contact_no = supplier_contact_no;
		this.supplier_email_id = supplier_email_id;
	}

	public int getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getSupplier_contact_no() {
		return supplier_contact_no;
	}
	public void setSupplier_contact_no(String supplier_contact_no) {
		this.supplier_contact_no = supplier_contact_no;
	}
	public String getSupplier_email_id() {
		return supplier_email_id;
	}
	public void setSupplier_email_id(String supplier_email_id) {
		this.supplier_email_id = supplier_email_id;
	}
	@Override
	public String toString() {
		return "Supplier [supplier_id=" + supplier_id + ", supplier_name=" + supplier_name + ", supplier_contact_no="
				+ supplier_contact_no + ", supplier_email_id=" + supplier_email_id + "]";
	} 
}
