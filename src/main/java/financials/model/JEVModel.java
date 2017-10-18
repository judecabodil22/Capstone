package financials.model;

import java.sql.Timestamp;
import java.util.Date;

public class JEVModel {
	
	private	Integer jev_id;
	private	String jev_no;
	private	Date jev_date;
	private	Integer fund_uid;
	private	Integer tmp_header_uid;
	private	String particulars;
	private	Integer trans_transaction_type_uid;
	private	Float amount;
	private	Boolean account_flag;
	private	Integer resp_center_uid;
	private String status;
	private Integer prepared_by;
	private	Date approved_date;
	private	Integer approved_by;
	private	Date disapproved_date;
	private	Integer disapproved_by;
	private	String remarks;
	
	
	public JEVModel() {
	}

	public JEVModel(Integer jev_id, 
			String jev_no, 
			Timestamp jev_date,
            Integer fund_uid, 
            Integer tmp_header_uid, 
            String particulars,
            Integer trans_transaction_type_uid, 
            Float amount,
            Boolean account_flag, 
            Integer resp_center_uid,
            String status,
            Integer prepared_by,
            Timestamp approved_date, 
            Integer approved_by,
            Timestamp disapproved_date, 
            Integer disapproved_by, 
            String remarks) {
		
	    super();
	    this.jev_id = jev_id;
	    this.jev_no = jev_no;
	    this.jev_date = jev_date;
	    this.fund_uid = fund_uid;
	    this.tmp_header_uid = tmp_header_uid;
	    this.particulars = particulars;
	    this.trans_transaction_type_uid = trans_transaction_type_uid;
	    this.amount = amount;
	    this.account_flag = account_flag;
	    this.resp_center_uid = resp_center_uid;
	    this.status = status;
	    this.prepared_by = prepared_by;
	    this.approved_date = approved_date;
	    this.approved_by = approved_by;
	    this.disapproved_date = disapproved_date;
	    this.disapproved_by = disapproved_by;
	    this.remarks = remarks;
    }

	/**
	 * @return the jev_id
	 */
	public Integer getJev_id() {
		return jev_id;
	}

	/**
	 * @param jev_id the jev_id to set
	 */
	public void setJev_id(Integer jev_id) {
		this.jev_id = jev_id;
	}

	/**
	 * @return the jev_no
	 */
	public String getJev_no() {
		return jev_no;
	}

	/**
	 * @param jev_no the jev_no to set
	 */
	public void setJev_no(String jev_no) {
		this.jev_no = jev_no;
	}

	/**
	 * @return the jev_date
	 */
	public Date getJev_date() {
		return jev_date;
	}

	/**
	 * @param jev_date the jev_date to set
	 */
	public void setJev_date(Date jev_date) {
		this.jev_date = jev_date;
	}

	/**
	 * @return the fund_uid
	 */
	public Integer getFund_uid() {
		return fund_uid;
	}

	/**
	 * @param fund_uid the fund_uid to set
	 */
	public void setFund_uid(Integer fund_uid) {
		this.fund_uid = fund_uid;
	}

	/**
	 * @return the tmp_header_uid
	 */
	public Integer getTmp_header_uid() {
		return tmp_header_uid;
	}

	/**
	 * @param tmp_header_uid the tmp_header_uid to set
	 */
	public void setTmp_header_uid(Integer tmp_header_uid) {
		this.tmp_header_uid = tmp_header_uid;
	}

	/**
	 * @return the particulars
	 */
	public String getParticulars() {
		return particulars;
	}

	/**
	 * @param particulars the particulars to set
	 */
	public void setParticulars(String particulars) {
		this.particulars = particulars;
	}

	/**
	 * @return the trans_transaction_type_uid
	 */
	public Integer getTrans_transaction_type_uid() {
		return trans_transaction_type_uid;
	}

	/**
	 * @param trans_transaction_type_uid the trans_transaction_type_uid to set
	 */
	public void setTrans_transaction_type_uid(Integer trans_transaction_type_uid) {
		this.trans_transaction_type_uid = trans_transaction_type_uid;
	}

	/**
	 * @return the amount
	 */
	public Float getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(Float amount) {
		this.amount = amount;
	}

	/**
	 * @return the account_flag
	 */
	public Boolean getAccount_flag() {
		return account_flag;
	}

	/**
	 * @param account_flag the account_flag to set
	 */
	public void setAccount_flag(Boolean account_flag) {
		this.account_flag = account_flag;
	}

	/**
	 * @return the resp_center_uid
	 */
	public Integer getResp_center_uid() {
		return resp_center_uid;
	}

	/**
	 * @param resp_center_uid the resp_center_uid to set
	 */
	public void setResp_center_uid(Integer resp_center_uid) {
		this.resp_center_uid = resp_center_uid;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the prepared_by
	 */
	public Integer getPrepared_by() {
		return prepared_by;
	}

	/**
	 * @param prepared_by the prepared_by to set
	 */
	public void setPrepared_by(Integer prepared_by) {
		this.prepared_by = prepared_by;
	}

	/**
	 * @return the approved_date
	 */
	public Date getApproved_date() {
		return approved_date;
	}

	/**
	 * @param approved_date the approved_date to set
	 */
	public void setApproved_date(Date approved_date) {
		this.approved_date = approved_date;
	}

	/**
	 * @return the approved_by
	 */
	public Integer getApproved_by() {
		return approved_by;
	}

	/**
	 * @param approved_by the approved_by to set
	 */
	public void setApproved_by(Integer approved_by) {
		this.approved_by = approved_by;
	}

	/**
	 * @return the disapproved_date
	 */
	public Date getDisapproved_date() {
		return disapproved_date;
	}

	/**
	 * @param disapproved_date the disapproved_date to set
	 */
	public void setDisapproved_date(Timestamp disapproved_date) {
		this.disapproved_date = disapproved_date;
	}

	/**
	 * @return the disapproved_by
	 */
	public Integer getDisapproved_by() {
		return disapproved_by;
	}

	/**
	 * @param disapproved_by the disapproved_by to set
	 */
	public void setDisapproved_by(Integer disapproved_by) {
		this.disapproved_by = disapproved_by;
	}

	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}

	/**
	 * @param remarks the remarks to set
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}


}
