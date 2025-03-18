package com.bankloan.repository;

import com.bankloan.model.LoanProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoanProductRepository extends JpaRepository<LoanProduct, Integer> {
    LoanProduct findTopByOrderByIdDesc();
}
