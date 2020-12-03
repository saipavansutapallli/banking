package com.bankapp.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bankapp.model.dao.Account;
import com.bankapp.model.dao.TransactionEntry;
import com.bankapp.model.service.AccountService;
import com.bankapp.model.service.TransactionEntryService;
import com.bankapp.web.formbeans.TransferBean;
import com.bankapp.web.formbeans.WithdrawBean;

@Controller
public class TransactionController {

	private TransactionEntryService transactionentryservice;

	@Autowired
	public TransactionController(TransactionEntryService transactionentryservice) {

		this.transactionentryservice = transactionentryservice;
	}

	
	@GetMapping("transactions")
	public ModelAndView transactionsGet(HttpServletRequest req,ModelAndView mvv) {
		mvv.setViewName("transactions");
		mvv.addObject("transactions", transactionentryservice.getallTransactions());
    	mvv.addObject("user", req.getSession(false).getAttribute("user"));
		return mvv;
	}
	
	@GetMapping("transaction/{id}")
	public ModelAndView transactionGet(@PathVariable("id") int fromaccountId,HttpServletRequest req,ModelAndView mvv) {
		mvv.setViewName("transactions");
		mvv.addObject("transactions", transactionentryservice.getTransactionsById(fromaccountId));
    	mvv.addObject("user", req.getSession(false).getAttribute("user"));
		return mvv;
	}
	
	
	

}