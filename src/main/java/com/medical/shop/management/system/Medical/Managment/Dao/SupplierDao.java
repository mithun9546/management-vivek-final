package com.medical.shop.management.system.Medical.Managment.Dao;

import java.util.List;

import com.medical.shop.management.system.Medical.Managment.Model.Product;
import com.medical.shop.management.system.Medical.Managment.Model.Supplier;

public interface SupplierDao {
	
	public List<Product> getSupplierWiseList();
	
	public boolean addNewSupplier(Supplier supplier);
	
	public List<String> getSupplierNameList();
	
	public boolean deleteSupplier(String supplier_name);
	
	public Supplier getSupplierByName(String supplier_name);

	public boolean updateSupplier(Supplier supplier);
}
