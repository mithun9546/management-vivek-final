package com.medical.shop.management.system.Medical.Managment.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.medical.shop.management.system.Medical.Managment.Dao.ProductDaoImpl;
import com.medical.shop.management.system.Medical.Managment.Model.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDaoImpl productDaoImpl;

	@ModelAttribute("productsType")
	public List<String> productType() {
		return productDaoImpl.getProductTypeList();
	}

	@ModelAttribute("products")
	public List<String> products() {
		return productDaoImpl.getProductsName();
	}

	@ModelAttribute("supplierList")
	public List<String> suppliersList() {
		return productDaoImpl.getSupplierList();
	}

	// Product Search
	@RequestMapping(value = "/productsearch", method = RequestMethod.GET)
	public String productSearchDisplay(@ModelAttribute("product") Product product) {
		return "productsearch";
	}

	@RequestMapping(value = "/productsearch", method = RequestMethod.POST)
	public String productSearch(@ModelAttribute("product") Product product, ModelMap model) {
		List<Product> list = new ArrayList<Product>();
		list = productDaoImpl.getProductList(product);
		model.addAttribute("productlist", list);
		return "productsearch";
	}

	//Add Product 
	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String showAddProduct(@ModelAttribute("product") Product product, ModelMap model) {
		System.out.println(product);
		model.put("button", "add");
		return "addProduct";
	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("product") Product product, BindingResult result, ModelMap model) {
		if (productDaoImpl.addProductDB(product) && !result.hasErrors()) {
			model.put("message", "Data saved successfully!!!");
			return "addProduct";
		}
		model.put("message", "Unsuccesssful");
		return "addProduct";
	}
	
	// Deleting a Product
	@RequestMapping(value = "/delProduct", method = RequestMethod.POST)
	public String deleteProducts(@ModelAttribute("product") Product product, BindingResult result, ModelMap model) {
		if (!result.hasErrors() && productDaoImpl.deleteProduct(product)) {
			model.put("delmessage", "Record deleted successfully!!!");
			return "deleteProduct";
		}
		model.put("delmessage", "Unable to delete record");
		return "deleteProduct";
	}
	
	@RequestMapping(value = "/delProduct", method = RequestMethod.GET)
	public String deleteProductsDisplay(@ModelAttribute("product") Product product) {
		return "deleteProduct";
	}
	
	//Update Product
	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public String updateProductDispaly(@ModelAttribute("product") Product product)
	{
		return "updateProduct";
	}
	
	@RequestMapping(value = "/updateProductRedirectToAdd", method = RequestMethod.POST)
	public String updateProductRedirectToAdd(@ModelAttribute("product") Product product, ModelMap model)
	{
		product = productDaoImpl.getProductByName(product.getProduct_name());
		model.put("product", product);
		model.put("button", "update");
		System.out.println(product);
		return "addProduct";
	}
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product") Product product, ModelMap model)
	{
		model.put("button", "update");
		if(productDaoImpl.updateProduct(product)) {
			model.put("message", "Data updated successfully!!!");
		}
		else {
			model.put("message", "Data updated Unsuccessfull!!!");
		}
		return "addProduct";
	}

	//Manage Product 
	@RequestMapping(value = "/manageProduct", method = RequestMethod.GET)
	public String manageProductDisplay() {
		return "manageProduct";
	}
	
	//Stock Maintenance
	@RequestMapping(value = "/stockMaintenance", method = RequestMethod.GET)
	public String stockMaintenanceDisplay(@ModelAttribute("product") Product product) {
		return "StockMaintenance";
	}

	
	@RequestMapping(value = "/stockMaintenanceAdd", params = "add", method = RequestMethod.GET)
	public String stockMaintenanceAdd(@ModelAttribute("product") Product product, ModelMap model) {
		int quantity = productDaoImpl.updateQuantityByProductName(product.getProduct_name(), product.getQuantity());
		if (quantity != -1) {
			model.put("update", "New Qunatity of " + product.getProduct_name() + " is " + quantity);
		} else {
			model.put("update", "Product Quantity Not Updated");
		}
		return "StockMaintenance";
	}

	@RequestMapping(value = "/stockMaintenanceAdd", params = "delete", method = RequestMethod.GET)
	public String stockMaintenanceDelet(@ModelAttribute("product") Product product, ModelMap model) {
		int quantity = productDaoImpl.deleteQunatityByProductName(product.getProduct_name(), product.getQuantity());
		if (quantity != -1) {
			model.put("update", "New Qunatity of " + product.getProduct_name() + " is " + quantity);
		} else {
			model.put("update", "Product Quantity Not Updated");
		}
		return "StockMaintenance";
	}


	

	@RequestMapping(value = "/minimumStock", method = RequestMethod.GET)
	public String minimumStockDisplay()
	{
		return "MinimumStock";
	}
	
	@RequestMapping(value = "/minimumStock", method = RequestMethod.POST)
	public String minimumStock(@RequestParam int minStockValue, ModelMap model) 
	{
		List<Product> minproductlist = productDaoImpl.productsWithMinimumStockValue(minStockValue);
		if(minproductlist == null || minproductlist.isEmpty()) {
			model.put("minproductlist", "No product Found");
		}
		else {
			model.put("minproductlist", minproductlist);
		}
		return "MinimumStock";
	}
	
	// Purchase Report
	@RequestMapping(value = "/purchaseReport", method = RequestMethod.GET)
	public String purchaseReportDisplay() 
	{
		return "purchaseReport";
	}
	
	@RequestMapping(value = "/purchaseReport", method = RequestMethod.POST)
	public String purchaseReport(@RequestParam String purchaseDate, ModelMap model) 
	{
		List<Product> purchaseProduct = productDaoImpl.productReport(purchaseDate);
		if(purchaseProduct == null || purchaseProduct.isEmpty()) {
			model.put("purchaseProduct", "No Product Purcahsed on this day");
		}
		else {
			model.put("purchaseProduct", purchaseProduct);
		}
		return "purchaseReport";
	}
}
