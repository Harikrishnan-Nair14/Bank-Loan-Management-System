package com.bankloan.repository;

import com.bankloan.model.Repayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepaymentRepository extends JpaRepository<Repayment, Integer> {
}
