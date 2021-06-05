package com.springcrm.dao;

import java.util.List;

import com.springcrm.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers(String sortby);

	public void saveCustomer(Customer newCustomer);
		
	public Customer getCustomerById(int customerId);
	
	public void deleteCustomerById(int customerId);
	
}
