package com.springcrm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springcrm.entity.Customer;
import com.springcrm.service.CustomerService;
import com.springcrm.util.SortUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	public CustomerController() {
		super();
		System.out.println("\nCustomerController - Constructor\n");
	}
	
	@GetMapping("/list")
	@Transactional
	public String showCustomers(Model model, 
			@RequestParam(name = "sortby", required = false) String sortBy, 
			RedirectAttributes redirectAttributes) {
		List<Customer> customers = null;
		
		System.out.println("\nSort By Field: " + sortBy + "\n");
		
		if(sortBy != null) {
			 customers = customerService.getCustomers(sortBy);
		}else {
			redirectAttributes.addAttribute("sortby", "lastName");
			return "redirect:/customer/list";
		}

		model.addAttribute("customers", customers);
		
		return "customer-list";
	}
	
	@GetMapping("/add")
	public String getAddCustomerForm(Model model) {
		Customer newCustomer = new Customer();
		model.addAttribute("customer", newCustomer);
		return "customer-form";
	}
	
	@PostMapping("/add")
	public String saveCustomer(@ModelAttribute("customer") Customer newCustomer) {
		System.out.println("New Customer: " + newCustomer);
		customerService.saveCustomer(newCustomer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/update")
	public String getUpdateCustomerForm(@RequestParam int customerId, Model model) {
		Customer customer = customerService.getCustomerById(customerId);
		model.addAttribute("customer", customer);
		return "customer-form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int customerId) {
		customerService.deleteCustomerById(customerId);
		return "redirect:/customer/list";
	}
	
	
}
