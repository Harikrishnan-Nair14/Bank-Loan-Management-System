package com.bankloan.service;

import com.bankloan.model.Repayment;
import com.bankloan.repository.RepaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepaymentService {

    @Autowired
    private RepaymentRepository repaymentRepository;

    public void saveRepayment(Repayment repayment) {
        repaymentRepository.save(repayment);
    }

    public List<Repayment> getAllRepayments() {
        return repaymentRepository.findAll();
    }

    public Repayment getRepaymentById(Integer id) {
        return repaymentRepository.findById(id).orElse(null);
    }

    public void deleteRepayment(Integer id) {
        repaymentRepository.deleteById(id);
    }
}
