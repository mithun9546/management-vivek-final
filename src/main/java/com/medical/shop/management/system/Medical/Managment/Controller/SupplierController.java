package com.medical.shop.management.system.Medical.Managment.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.medical.shop.management.system.Medical.Managment.Dao.SupplierDaoImpl;
import com.medical.shop.management.system.Medical.Managment.Model.Product;
import com.medical.shop.management.system.Medical.Managment.Model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDaoImpl supplierdaoimpl;

	@ModelAttribute("supplierwiseList")
	public List<Product> supplierwiseList() {
		return supplierdaoimpl.getSupplierWiseList();
	}

	@ModelAttribute("supplierName")
	public List<String> supplierNameList()
	{
		return supplierdaoimpl.getSupplierNameList();
	}
	
	// Supplier Wise Report 
	@RequestMapping(value = "/supplierList", method = RequestMethod.GET)
	public String supplierList(@ModelAttribute("supplier") Supplier supplier, ModelMap model) {
		return "supplierWiseList";
	}


	// Update Supplier
	@RequestMapping(value = "/editSupplierDetails", method = RequestMethod.GET)
	public String editSuppliersDisplay(@ModelAttribute("supplier") Supplier supplier) {
		return "updateSupplier";
	}
	
	@RequestMapping(value = "/editSupplierDetails", method = RequestMethod.POST)
	public String editSuppliers(@ModelAttribute("supplier") Supplier supplier, ModelMap model) {
		supplier = supplierdaoimpl.getSupplierByName(supplier.getSupplier_name());
		model.put("supplier", supplier);
		model.put("button", "edit");
		return "addNewSupplier";
	}
	
	@RequestMapping(value = "/editNewSupplier", method = RequestMethod.POST)
	public String editNew(@ModelAttribute("supplier") Supplier supplier, BindingResult result, ModelMap model) {
		System.out.println(supplier);
		if (!result.hasErrors() && supplierdaoimpl.updateSupplier(supplier)) {
			model.put("message", "Supplier updated successfully!!!");
		} else {
			model.put("message", "Unsuccessful!!!");
		}		
		model.put("button", "edit");
		return "addNewSupplier";
	}
	
	// Add Supplier
	@RequestMapping(value = "/addNewSupplier", method = RequestMethod.GET)
	public String addNewSupplier(@ModelAttribute("supplier") Supplier supplier, ModelMap model) {
		model.put("button", "add");
		return "addNewSupplier";
	}

	@RequestMapping(value = "/addNewSupplier", method = RequestMethod.POST)
	public String addNew(@ModelAttribute("supplier") Supplier supplier, BindingResult result, ModelMap model) {
		if (!result.hasErrors() && supplierdaoimpl.addNewSupplier(supplier)) {
			model.put("message", "Supplier added successfully!!!");
		} else {
			model.put("message", "Unsuccessful!!!");
		}	
		model.put("button", "add");
		return "addNewSupplier";
	}
	
	
	// Delete Supplier
	@RequestMapping(value = "/deleteSupplier", method = RequestMethod.GET)
	public String deleteSupplier(@ModelAttribute("supplier") Supplier supplier) {
		return "deleteSupplier";
	}
	
	@RequestMapping(value = "/deleteSupplier", method = RequestMethod.POST)
	public String deleteSupplierDB(@ModelAttribute("supplier") Supplier supplier,BindingResult result,ModelMap model) {
		
		if(!result.hasErrors() && supplierdaoimpl.deleteSupplier(supplier.getSupplier_name()))
		{
			model.put("message", "Record Deleted Successfully!!!");
			return "deleteSupplier";
		}
		model.put("message", "Unsuccessful!!!");
		
		return "deleteSupplier";
	}
	
	// Manage Supplier
	@RequestMapping(value = "/manageSupplier", method = RequestMethod.GET)
	public String manageSupplier() {
		return "manageSupplier";
	}

}
