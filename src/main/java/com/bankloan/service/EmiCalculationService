package com.bankloan.service;

import org.springframework.stereotype.Service;

@Service
public class EmiCalculationService {

    public double calculateEmi(double principal, double annualInterestRate, int tenureInMonths) {
        double monthlyInterestRate = annualInterestRate / 12 / 100;
        double emi = (principal * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, tenureInMonths)) /
                     (Math.pow(1 + monthlyInterestRate, tenureInMonths) - 1);
        return emi;
    }
}
