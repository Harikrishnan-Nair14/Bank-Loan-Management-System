package com.bankloan.service;

import com.bankloan.model.LoanProduct;
import com.bankloan.repository.LoanProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanProductService {

    @Autowired
    private LoanProductRepository loanProductRepository;

    public List<LoanProduct> getAllLoanProducts() {
        return loanProductRepository.findAll();
    }

    public LoanProduct saveLoanProduct(LoanProduct loanProduct) {
        return loanProductRepository.save(loanProduct);
    }

    public LoanProduct getLoanProductById(Integer loanProductId) {
        return loanProductRepository.findById(loanProductId).orElse(null);
    }

    public void deleteLoanProduct(Integer loanProductId) {
        loanProductRepository.deleteById(loanProductId);
    }
}
