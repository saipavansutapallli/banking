package com.bankapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.Account;
import com.bankapp.model.dao.AccountDao;
import com.bankapp.model.dao.TxType;

@Service(value = "bs")
@Transactional
public class AccountServiceImpl implements AccountService {

	private AccountDao accountdao;
	private TransactionEntryService transactionentryservice;

	@Autowired
	public AccountServiceImpl(AccountDao accountdao, TransactionEntryService transactionentryservice) {

		this.accountdao = accountdao;
		this.transactionentryservice = transactionentryservice;
	}

	
	public List<Account> getAllAccounts() {
		return accountdao.getAllAccounts();
	}

	
	public Account updateAccount(int accountId, Account account) {
		return accountdao.updateAccount(accountId, account);
	}


	public Account deleteAccount(int accountId) {
		return accountdao.deleteAccount(accountId);
	}

	
	public Account getAccountById(int accountId) {
		return accountdao.getAccountById(accountId);
	}


	public Account addAccount(Account account) {
		return accountdao.addAccount(account);
	}


	public void deposit(int accountId, double amount) {
		Account account = accountdao.getAccountById(accountId);
		account.setBalance(account.getBalance() + amount);
		accountdao.updateAccount(account);
		transactionentryservice.addTransaction(account,account," deposit in "+ accountId, amount, TxType.DEPOSIT);
		

	}

	
	public void withdraw(int accountId, double amount) {
		Account account = accountdao.getAccountById(accountId);
		account.setBalance(account.getBalance() - amount);
		accountdao.updateAccount(account);
		transactionentryservice.addTransaction(account,account," withdraw from "+ accountId, amount, TxType.WITHDRAW);
	}

	public void transfer(int fromaccountId, int toaccountId, double amount) {
		Account account1 = accountdao.getAccountById(fromaccountId);
		account1.setBalance(account1.getBalance() - amount);
		accountdao.updateAccount(account1);
		Account account = accountdao.getAccountById(toaccountId);
		account.setBalance(account.getBalance() + amount);
		accountdao.updateAccount(account);
		transactionentryservice.addTransaction(account1,account," withdraw from "+ fromaccountId+" deposit in "+ toaccountId, amount, TxType.TRANSFER);
	}

}
