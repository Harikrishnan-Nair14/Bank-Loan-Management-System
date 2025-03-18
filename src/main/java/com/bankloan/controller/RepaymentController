package com.bankloan.controller;

import com.bankloan.model.Repayment;
import com.bankloan.service.RepaymentService;
import com.bankloan.service.LoanApplicationService;
import com.bankloan.model.LoanApplication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/repayments")
public class RepaymentController {

    @Autowired
    private RepaymentService repaymentService;

    @Autowired
    private LoanApplicationService loanApplicationService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        Repayment repayment = new Repayment();
        LoanApplication lastLoanApplication = loanApplicationService.getLastLoanApplication();
        model.addAttribute("repayment", repayment);
        model.addAttribute("lastLoanApplicationId", lastLoanApplication != null ? lastLoanApplication.getId() : null);
        return "register_repayment";
    }

    @PostMapping("/register")
    public String registerRepayment(@ModelAttribute("repayment") Repayment repayment, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "register_repayment";
        }
        repaymentService.saveRepayment(repayment);
        return "redirect:/repayments/list";
    }

    @GetMapping("/list")
    public String listRepayments(Model model) {
        model.addAttribute("repayments", repaymentService.getAllRepayments());
        return "repayment_list";
    }

    @GetMapping("/edit/{repaymentId}")
    public String showEditForm(@PathVariable("repaymentId") Integer repaymentId, Model model) {
        Repayment repayment = repaymentService.getRepaymentById(repaymentId);
        if (repayment != null) {
            model.addAttribute("repayment", repayment);
            return "edit_repayment";
        } else {
            return "redirect:/repayments/list";
        }
    }

    @PostMapping("/update")
    public String updateRepayment(@ModelAttribute("repayment") Repayment repayment, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "edit_repayment";
        }
        repaymentService.saveRepayment(repayment);
        return "redirect:/repayments/list";
    }

    @GetMapping("/delete/{repaymentId}")
    public String deleteRepayment(@PathVariable("repaymentId") Integer repaymentId) {
        repaymentService.deleteRepayment(repaymentId);
        return "redirect:/repayments/list";
    }
}
