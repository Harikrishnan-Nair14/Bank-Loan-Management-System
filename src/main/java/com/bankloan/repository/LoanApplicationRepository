package com.bankloan.repository;

import com.bankloan.model.LoanApplication;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
public interface LoanApplicationRepository extends JpaRepository<LoanApplication, Integer> {

    // Method to find the latest loan application
    LoanApplication findTopByOrderByIdDesc();

    // Method to find a loan application by ID
    Optional<LoanApplication> findById(long id);

    // Query to fetch outstanding loans report
    @Query("SELECT new map(l.id as 'Repayment ID', l.id as 'Application ID', l.customer.id as 'Customer ID', l.applicationDate as 'Due Date', l.loanAmount as 'Amount Due', l.emi as 'EMI Amount', l.loanProduct.interestRate as 'Interest Rate', l.loanProduct.tenure as 'Tenure') FROM LoanApplication l WHERE l.approvalStatus = 'APPROVED'")
    List<Map<String, Object>> fetchOutstandingLoansReport();
}
