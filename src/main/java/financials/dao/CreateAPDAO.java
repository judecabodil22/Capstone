package financials.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.apar_CreateapMODEL;

public class CreateAPDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;
	
	public CreateAPDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);	
	}
	public boolean insert (apar_CreateapMODEL modelcap) {
		String sql = "Insert into tbl_payable(ap_uid,ap_transaction_num,ap_company_name,ap_claimant,resp_center_uid,ap_voucher_date,ap_due_date,ap_amount,account_type,ap_particulars,ap_status)" + "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	jdbcTemplate.update(sql, new Object[] { modelcap.getAp_uid(),modelcap.getAp_transaction_num(),modelcap.getAp_company_name(),modelcap.getAp_claimant(),modelcap.getResp_center_uid(),modelcap.getAp_voucher_date(),modelcap.getAp_due_date(),modelcap.getAp_amount(),modelcap.getAccount_type(),modelcap.getAp_particulars(),modelcap.getAp_status() });
	return true;
		}
	}

