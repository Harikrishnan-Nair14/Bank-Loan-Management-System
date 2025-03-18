package com.bankloan.controller;

import com.bankloan.service.EmiCalculationService;
import com.bankloan.service.LoanApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class LoanController {

    @Autowired
    private EmiCalculationService emiCalculationService;

    @Autowired
    private LoanApplicationService loanApplicationService;

    @PostMapping("/loan-products")
    public String saveLoanProduct(@RequestParam("interestRate") double interestRate,
                                  @RequestParam("minimumAmount") double minimumAmount,
                                  @RequestParam("maximumAmount") double maximumAmount,
                                  @RequestParam("tenure") int tenure,
                                  HttpSession session) {
        session.setAttribute("interestRate", interestRate);
        session.setAttribute("minimumAmount", minimumAmount);
        session.setAttribute("maximumAmount", maximumAmount);
        session.setAttribute("tenure", tenure);
        return "redirect:/loan-products";
    }

    @PostMapping("/loan-applications")
    public String saveLoanApplication(@RequestParam("loanAmount") double loanAmount,
                                      @RequestParam("applicationDate") String applicationDate,
                                      @RequestParam("approvalStatus") String approvalStatus,
                                      HttpSession session) {
        if ("approved".equalsIgnoreCase(approvalStatus)) {
            session.setAttribute("loanAmount", loanAmount);
            session.setAttribute("applicationDate", applicationDate);
            session.setAttribute("approvalStatus", approvalStatus);
        }
        return "redirect:/loan-applications";
    }

    @PostMapping("/repayments")
    public String saveRepayment(@RequestParam("amountDue") double amountDue,
                                @RequestParam("paymentStatus") String paymentStatus,
                                HttpSession session) {
        if ("pending".equalsIgnoreCase(paymentStatus)) {
            session.setAttribute("amountDue", amountDue);
            session.setAttribute("paymentStatus", paymentStatus);
        }
        return "redirect:/repayments";
    }

    @GetMapping("/emi-calculator")
    public String showEmiCalculatorForm(@RequestParam("loanAmount") double loanAmount,
                                        @RequestParam("applicationDate") String applicationDate,
                                        @RequestParam("interestRate") double interestRate,
                                        @RequestParam("tenure") int tenure,
                                        @RequestParam("applicationId") long applicationId,
                                        Model model) {
        model.addAttribute("loanAmount", loanAmount);
        model.addAttribute("applicationDate", applicationDate);
        model.addAttribute("interestRate", interestRate);
        model.addAttribute("tenure", tenure);
        model.addAttribute("applicationId", applicationId);
        
        model.addAttribute("principal", loanAmount);
        model.addAttribute("annualInterestRate", interestRate);
        model.addAttribute("tenureInMonths", tenure);
        return "emi-calculator";
    }

    @PostMapping("/calculate-emi")
    public String calculateEmi(@RequestParam("principal") double principal,
                               @RequestParam("annualInterestRate") double annualInterestRate,
                               @RequestParam("tenureInMonths") int tenureInMonths,
                               @RequestParam("applicationId") long applicationId,
                               Model model) {
        double emi = emiCalculationService.calculateEmi(principal, annualInterestRate, tenureInMonths);
        model.addAttribute("emi", emi);

        // Store the EMI result with the loan application
        loanApplicationService.updateEmi(applicationId, emi);

        return "emi-result";
    }

    @GetMapping("/outstanding-loans-report")
    public String showOutstandingLoansReport(Model model) {
        List<Map<String, Object>> outstandingLoansReport = fetchOutstandingLoansReport();

        model.addAttribute("outstandingLoansReport", outstandingLoansReport);
        return "outstanding_loans_report";
    }

    // Placeholder for fetching the outstanding loans report
    private List<Map<String, Object>> fetchOutstandingLoansReport() {
        return loanApplicationService.getOutstandingLoansReport();
    }
}
