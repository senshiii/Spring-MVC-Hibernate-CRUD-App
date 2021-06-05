package com.springcrm.service;

import java.util.List;

import com.springcrm.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers(String sortBy);

	public void saveCustomer(Customer newCustomer);
	
	public Customer getCustomerById(int customerId);
	
	public void deleteCustomerById(int customerId);
}
