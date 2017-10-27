package financials.model;

import java.sql.Date;

public class C_TransactionsModel {
	
	private int C_OR_ID;
	private String C_OR_No;
	private String C_Type;
	private String C_Payee;
	private String C_TransDesc;
	private Float C_Payment;
	private Date C_Date_Paid;
	private int Type_ID;
	
	public int getC_OR_ID() 
	{
		return C_OR_ID;
	}
	public void setC_OR_ID(int c_OR_ID) {
		C_OR_ID = c_OR_ID;
	}
	public String getC_Type() {
		return C_Type;
	}
	public void setC_Type(String c_Type) {
		C_Type = c_Type;
	}
	public String getC_Payee() {
		return C_Payee;
	}
	public void setC_Payee(String c_Payee) {
		C_Payee = c_Payee;
	}
	public String getC_TransDesc() {
		return C_TransDesc;
	}
	public void setC_TransDesc(String c_TransDesc) {
		C_TransDesc = c_TransDesc;
	}
	public Float getC_Payment() {
		return C_Payment;
	}
	public void setC_Payment(Float c_Payment) {
		C_Payment = c_Payment;
	}
	
	public int getType_ID() {
		return Type_ID;
	}
	public void setType_ID(int type_ID) {
		Type_ID = type_ID;
	}
	public Date getC_Date_Paid() {
		return C_Date_Paid;
	}
	public void setC_Date_Paid(Date c_Date_Paid) {
		C_Date_Paid = c_Date_Paid;
	}
	public String getC_OR_No() {
		return C_OR_No;
	}
	public void setC_OR_No(String c_OR_No) {
		C_OR_No = c_OR_No;
	}
	
	
	

		
		
}
