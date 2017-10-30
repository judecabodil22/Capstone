package financials.pdf;

public class TrialBalanceModel {
	private String accountName;
	private float debit;
	private String debitCurrency;
	private float credit;
	private String creditCurrency;
	
	public TrialBalanceModel() {
    }
	
	public TrialBalanceModel(
			String accountName, 
			float debit,
            String debitCurrency, 
            float credit, 
            String creditCurrency) {
	    this.accountName = accountName;
	    this.debit = debit;
	    this.debitCurrency = debitCurrency;
	    this.credit = credit;
	    this.creditCurrency = creditCurrency;
    }
	
	public TrialBalanceModel(
			String accountName, 
			float debit,
            float credit) {
	    this.accountName = accountName;
	    this.debit = debit;
	    this.credit = credit;
    }
	
	public TrialBalanceModel Debit(String accountName, float debit) {
	    return new TrialBalanceModel(accountName, debit, 0);
    }
	
	public TrialBalanceModel Credit(String accountName, float credit) {
	    return new TrialBalanceModel(accountName, 0, credit);
    }
	
	/**
	 * @return the accountName
	 */
	public String getAccountName() {
		return accountName;
	}
	/**
	 * @param accountName the accountName to set
	 */
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	/**
	 * @return the debit
	 */
	public float getDebit() {
		return debit;
	}
	/**
	 * @param debit the debit to set
	 */
	public void setDebit(float debit) {
		this.debit = debit;
	}
	/**
	 * @return the debitCurrency
	 */
	public String getDebitCurrency() {
		return debitCurrency;
	}
	/**
	 * @param debitCurrency the debitCurrency to set
	 */
	public void setDebitCurrency(String debitCurrency) {
		this.debitCurrency = debitCurrency;
	}
	/**
	 * @return the credit
	 */
	public float getCredit() {
		return credit;
	}
	/**
	 * @param credit the credit to set
	 */
	public void setCredit(float credit) {
		this.credit = credit;
	}
	/**
	 * @return the creditCurrency
	 */
	public String getCreditCurrency() {
		return creditCurrency;
	}
	/**
	 * @param creditCurrency the creditCurrency to set
	 */
	public void setCreditCurrency(String creditCurrency) {
		this.creditCurrency = creditCurrency;
	}
}
