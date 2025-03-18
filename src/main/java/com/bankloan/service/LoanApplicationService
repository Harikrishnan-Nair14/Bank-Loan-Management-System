package com.bankloan.service;

import com.bankloan.model.Customer;
import com.bankloan.model.LoanApplication;
import com.bankloan.model.LoanProduct;
import com.bankloan.repository.LoanApplicationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class LoanApplicationService {

    @Autowired
    private LoanApplicationRepository loanApplicationRepository;

    public void saveLoanApplication(LoanApplication loanApplication) {
        loanApplicationRepository.save(loanApplication);
    }

    public List<LoanApplication> getAllLoanApplications() {
        return loanApplicationRepository.findAll();
    }

    public LoanApplication getLoanApplicationById(Integer id) {
        return loanApplicationRepository.findById(id).orElse(null);
    }

    public void deleteLoanApplication(Integer id) {
        loanApplicationRepository.deleteById(id);
    }

    public LoanApplication getLastLoanApplication() {
        return loanApplicationRepository.findTopByOrderByIdDesc();
    }

    // New method to update EMI for a loan application
    public void updateEmi(long applicationId, double emi) {
        LoanApplication loanApplication = loanApplicationRepository.findById(applicationId).orElse(null);
        if (loanApplication != null) {
            loanApplication.setEmi(emi);
            loanApplicationRepository.save(loanApplication);
        }
    }

    // Method to fetch outstanding loans report
    public List<Map<String, Object>> getOutstandingLoansReport() {
        return loanApplicationRepository.fetchOutstandingLoansReport();
    }


}
