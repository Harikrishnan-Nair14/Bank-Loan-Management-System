package com.bankloan.controller;

import com.bankloan.model.LoanProduct;
import com.bankloan.service.LoanProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/loanProducts")
public class LoanProductController {

    @Autowired
    private LoanProductService loanProductService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("loanProduct", new LoanProduct());
        return "register_loanProduct";
    }

    @PostMapping("/register")
    public String registerLoanProduct(@ModelAttribute("loanProduct") LoanProduct loanProduct) {
        loanProductService.saveLoanProduct(loanProduct);
        return "redirect:/loanProducts/list";
    }

    @GetMapping("/list")
    public String listLoanProducts(Model model) {
        model.addAttribute("loanProducts", loanProductService.getAllLoanProducts());
        return "loanProduct_list";
    }

    @GetMapping("/edit/{loanProductId}")
    public String showEditForm(@PathVariable("loanProductId") Integer loanProductId, Model model) {
        LoanProduct loanProduct = loanProductService.getLoanProductById(loanProductId);
        if (loanProduct != null) {
            model.addAttribute("loanProduct", loanProduct);
            return "edit_loanProduct";
        } else {
            return "redirect:/loanProducts/list";
        }
    }

    @PostMapping("/update")
    public String updateLoanProduct(@ModelAttribute("loanProduct") LoanProduct loanProduct) {
        loanProductService.saveLoanProduct(loanProduct);
        return "redirect:/loanProducts/list";
    }

    @GetMapping("/delete/{loanProductId}")
    public String deleteLoanProduct(@PathVariable("loanProductId") Integer loanProductId) {
        loanProductService.deleteLoanProduct(loanProductId);
        return "redirect:/loanProducts/list";
    }
}
