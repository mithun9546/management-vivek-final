package com.medical.shop.management.system.Medical.Managment.Dao;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.internal.bytebuddy.asm.Advice.Return;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.medical.shop.management.system.Medical.Managment.Model.Product;
import com.medical.shop.management.system.Medical.Managment.Model.Supplier;
import com.medical.shop.management.system.Medical.Managment.RowMapper.ProductRowMapper;
import com.medical.shop.management.system.Medical.Managment.RowMapper.SupplierRowMapper;


@Component
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	JdbcTemplate jdbctemplate;

	@Override
	public List<Product> getSupplierWiseList() {
		String sql = "select * from product where supplier_name IN (select supplier_name from product group by supplier_name) order by supplier_name;";
		List<Product> list;
		try
		{
			list = jdbctemplate.query(sql, new ProductRowMapper());
		}
		catch(Exception e)
		{
			list = new ArrayList<Product>();
		}
		return list;
	}
	
	@Override
	public boolean addNewSupplier(Supplier supplier)
	{
		int row = 0;
		String sql = "INSERT INTO supplier(supplier_name,supplier_contact_no,supplier_email_id) VALUES(?,?,?)";
		try
		{
			row = jdbctemplate.update(sql,supplier.getSupplier_name(),supplier.getSupplier_contact_no(),supplier.getSupplier_email_id());
		}
		catch(Exception e)
		{
			row = 0;
			System.out.println(e);
		}
		System.out.println(row);
		return !(row==0);
	}
	
	@Override
	public List<String> getSupplierNameList()
	{
		String sql = "SELECT supplier_name FROM supplier";
		List<String> list;
		try
		{
			list = jdbctemplate.queryForList(sql,String.class);
		}
		catch(Exception e)
		{
			list = new ArrayList<String>();
		}
		
		return list;
	}
	
	@Override
	public boolean deleteSupplier(String supplier_name)
	{
		String sql = "DELETE FROM supplier where supplier_name = ?";
		int row;
		try
		{
			row = jdbctemplate.update(sql,supplier_name);
		}
		catch(Exception e)
		{
			System.out.println(e);
			row = 0;
		}
		
		return !(row==0);
	}

	@Override
	public Supplier getSupplierByName(String supplier_name) {
		String sql = "select * from supplier where supplier_name = ?";
		Supplier supplier;
		try {
			supplier = jdbctemplate.queryForObject(sql, new SupplierRowMapper(), supplier_name);
		}
		catch (Exception e) {
			supplier = null;
		}
		return supplier;
	}

	@Override
	public boolean updateSupplier(Supplier supplier) {
		String sql = "update supplier set supplier_contact_no = ?, supplier_email_id = ? where supplier_name = ?";
		try {
			jdbctemplate.update(sql, supplier.getSupplier_contact_no(), supplier.getSupplier_email_id(), supplier.getSupplier_name());
		}
		catch (Exception e) {
			return false;
		}
		return true;
	}

}
