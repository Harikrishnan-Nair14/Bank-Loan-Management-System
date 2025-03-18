package com.bankloan.controller;

import com.bankloan.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/reports")
public class ReportController {

    @Autowired
    private ReportService reportService;

    @GetMapping("/loan")
    public String generateLoanReport(Model model) {
        model.addAttribute("loanReport", reportService.generateLoanReport());
        return "loan_report";
    }

    @GetMapping("/repayment")
    public String generateRepaymentReport(Model model) {
        model.addAttribute("repaymentReport", reportService.generateRepaymentReport());
        return "repayment_report";
    }

    @GetMapping("/outstandingLoans")
    public String generateOutstandingLoansReport(Model model) {
        model.addAttribute("outstandingLoansReport", reportService.generateOutstandingLoansReport());
        return "outstanding_loans_report";
    }
}
