package com.gl.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import com.gl.crm.entities.Customer;
import com.gl.crm.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomers(Model model) {
		System.out.println("Get the List");

		List<Customer> customers = customerService.listAll();
		model.addAttribute("Customer", customers);
		return "customer-list";
	}

	@Transactional
	@RequestMapping("/showFormForAdd")
	public String addCustomer(Model model) {

		Customer customer = new Customer();

		// set Customer as a model attribute to pre-populate the form
		model.addAttribute("Customer", customer);

		// send over to form
		return "customer-form";
	}

	@Transactional
	@RequestMapping("/showFormForUpdate")
	public String updateCustomer(@RequestParam("customerId") int id, Model model) {

		// Find customer entry
		Customer customer = customerService.findById(id);

		model.addAttribute("Customer", customer);

		return "customer-form";
	}

	@Transactional
	@PostMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("firstname") String firstName,
			@RequestParam("lastname") String lastName, @RequestParam("email") String email) {

		Customer customer;

		if (id != 0) {
			customer = customerService.findById(id);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);
		} else {
			customer = new Customer(firstName, lastName, email);
		}

		// save the entry
		customerService.save(customer);

		// use a redirect to prevent duplicate submission
		return "redirect:/customer/list";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("customerId") int id) {

		customerService.deleteById(id);

		return "redirect:/customer/list";
	}

}
