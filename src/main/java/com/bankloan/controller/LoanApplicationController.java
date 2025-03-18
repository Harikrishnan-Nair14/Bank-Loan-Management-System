package com.bankloan.controller;

import com.bankloan.model.Customer;
import com.bankloan.model.LoanProduct;
import com.bankloan.model.LoanApplication;
import com.bankloan.service.LoanApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/loanApplications")
public class LoanApplicationController {

    @Autowired
    private LoanApplicationService loanApplicationService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        LoanApplication loanApplication = new LoanApplication();
        Customer lastCustomer = loanApplicationService.getLastCustomer();
        LoanProduct lastLoanProduct = loanApplicationService.getLastLoanProduct();
        model.addAttribute("loanApplication", loanApplication);
        model.addAttribute("lastCustomerId", lastCustomer != null ? lastCustomer.getId() : null);
        model.addAttribute("lastLoanProductId", lastLoanProduct != null ? lastLoanProduct.getId() : null);
        return "register_loanApplication";
    }

    @PostMapping("/register")
    public String registerLoanApplication(@ModelAttribute("loanApplication") LoanApplication loanApplication, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "register_loanApplication";
        }
        loanApplicationService.saveLoanApplication(loanApplication);
        return "redirect:/loanApplications/list";
    }

    @GetMapping("/list")
    public String listLoanApplications(Model model) {
        model.addAttribute("loanApplications", loanApplicationService.getAllLoanApplications());
        return "loanApplication_list";
    }

    @GetMapping("/edit/{applicationId}")
    public String showEditForm(@PathVariable("applicationId") Integer applicationId, Model model) {
        LoanApplication loanApplication = loanApplicationService.getLoanApplicationById(applicationId);
        if (loanApplication != null) {
            model.addAttribute("loanApplication", loanApplication);
            return "edit_loanApplication";
        } else {
            return "redirect:/loanApplications/list";
        }
    }

    @PostMapping("/update")
    public String updateLoanApplication(@ModelAttribute("loanApplication") LoanApplication loanApplication) {
        loanApplicationService.saveLoanApplication(loanApplication);
        return "redirect:/loanApplications/list";
    }

    @GetMapping("/delete/{applicationId}")
    public String deleteLoanApplication(@PathVariable("applicationId") Integer applicationId) {
        loanApplicationService.deleteLoanApplication(applicationId);
        return "redirect:/loanApplications/list";
    }
}
