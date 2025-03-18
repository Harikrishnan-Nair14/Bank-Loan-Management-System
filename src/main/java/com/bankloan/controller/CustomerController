package com.bankloan.controller;

import com.bankloan.model.Customer;
import com.bankloan.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "register_customer";
    }

    @PostMapping("/register")
    public String handleRegistration(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "register_customer";
        }
        customerService.saveCustomer(customer);
        return "redirect:/customers/list";
    }

    @GetMapping("/list")
    public String listCustomers(Model model) {
        model.addAttribute("customers", customerService.getAllCustomers());
        return "customer_list";
    }

    @GetMapping("/edit/{customerId}")
    public String showEditForm(@PathVariable("customerId") Integer customerId, Model model) {
        Customer customer = customerService.getCustomerById(customerId);
        if (customer != null) {
            model.addAttribute("customer", customer);
            return "edit_customer";
        } else {
            return "redirect:/customers/list";
        }
    }

    @PostMapping("/update")
    public String updateCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "edit_customer";
        }
        customerService.saveCustomer(customer);
        return "redirect:/customers/list";
    }

    @GetMapping("/delete/{customerId}")
    public String deleteCustomer(@PathVariable("customerId") Integer customerId) {
        customerService.deleteCustomer(customerId);
        return "redirect:/customers/list";
    }
}
