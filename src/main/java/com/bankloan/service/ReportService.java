package com.bankloan.service;

import com.bankloan.model.Customer;
import com.bankloan.model.LoanApplication;
import com.bankloan.model.PaymentStatus;
import com.bankloan.model.Repayment;
import com.bankloan.repository.CustomerRepository;
import com.bankloan.repository.LoanApplicationRepository;
import com.bankloan.repository.RepaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReportService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private LoanApplicationRepository loanApplicationRepository;

    @Autowired
    private RepaymentRepository repaymentRepository;

    public List<Map<String, Object>> generateLoanReport() {
        List<LoanApplication> loanApplications = loanApplicationRepository.findAll();
        List<Map<String, Object>> report = new ArrayList<>();

        for (LoanApplication loanApplication : loanApplications) {
            Map<String, Object> reportItem = new HashMap<>();
            reportItem.put("Application ID", loanApplication.getId());
            reportItem.put("Customer ID", loanApplication.getCustomer().getId());
            reportItem.put("Loan Product ID", loanApplication.getLoanProduct().getId());
            reportItem.put("Loan Amount", loanApplication.getLoanAmount());
            reportItem.put("Application Date", loanApplication.getApplicationDate());
            reportItem.put("Approval Status", loanApplication.getApprovalStatus());
            report.add(reportItem);
        }

        return report;
    }

    public List<Map<String, Object>> generateRepaymentReport() {
        List<Repayment> repayments = repaymentRepository.findAll();
        List<Map<String, Object>> report = new ArrayList<>();

        for (Repayment repayment : repayments) {
            Map<String, Object> reportItem = new HashMap<>();
            reportItem.put("Repayment ID", repayment.getId());
            reportItem.put("Application ID", repayment.getLoanApplication().getId());
            reportItem.put("Due Date", repayment.getDueDate());
            reportItem.put("Amount Due", repayment.getAmountDue());
            reportItem.put("Payment Date", repayment.getPaymentDate());
            reportItem.put("Payment Status", repayment.getPaymentStatus());
            report.add(reportItem);
        }

        return report;
    }

    public List<Map<String, Object>> generateOutstandingLoansReport() {
        List<Repayment> repayments = repaymentRepository.findAll();
        List<Map<String, Object>> report = new ArrayList<>();

        for (Repayment repayment : repayments) {
            if (repayment.getPaymentStatus() == PaymentStatus.PENDING) {
                Map<String, Object> reportItem = new HashMap<>();
                reportItem.put("Repayment ID", repayment.getId());
                reportItem.put("Application ID", repayment.getLoanApplication().getId());
                reportItem.put("Customer ID", repayment.getLoanApplication().getCustomer().getId());
                reportItem.put("Due Date", repayment.getDueDate());
                reportItem.put("Amount Due", repayment.getAmountDue());
                report.add(reportItem);
            }
        }

        return report;
    }
}
