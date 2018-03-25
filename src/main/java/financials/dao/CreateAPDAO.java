package financials.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AdminFundModel;
import financials.model.UserModel;
import financials.model.apar_CreateapMODEL;

public class CreateAPDAO {
	
		public JdbcTemplate jdbcTemplate;
		public PlatformTransactionManager platformTransactionManager;
		public TransactionTemplate transactionTemplate;
		private String sql;
		
		public CreateAPDAO(DataSource dataSource) {
			jdbcTemplate = new JdbcTemplate(dataSource);	
		}
		public boolean insert (apar_CreateapMODEL modelcap) {
			String sql = "Insert into tbl_apayable("
					+ "ap_company_name,"
					+ "ap_claimant,"
					+ "resp_center_uid,"
					+ "ap_voucher_date,"
					+ "ap_due_date,"
					+ "ap_amount,"
					+ "acc_uid,"
					+ "ap_particulars,"
					+ "ap_transaction_num,"
					+ "ap_status)" +
					"VALUES(?,?,?,?,?,?,?,?,?,?)";
		int i = jdbcTemplate.update(sql, new Object[] { 
				modelcap.getAp_company_name(),
				modelcap.getAp_claimant(),
				modelcap.getResp_center_uid(),
				modelcap.getAp_voucher_date(),
				modelcap.getAp_due_date(),
				modelcap.getAp_amount(),
				modelcap.getAcc_uid(),
				modelcap.getAp_particulars(),
				modelcap.getAp_transaction_num(),
				modelcap.getAp_status()
		});
		return (i > 0);
	}
		
	public List<apar_CreateapMODEL> dropdownresp_id() {
		String sql = "Select * from tbl_responsibility_center";
		return jdbcTemplate.query(sql, new RowMapper<apar_CreateapMODEL>() {
			public apar_CreateapMODEL mapRow(ResultSet rs, int row) throws SQLException {
				apar_CreateapMODEL user = new apar_CreateapMODEL();
				user.setResp_center_description(rs.getString("resp_center_description"));
				user.setResp_center_uid(rs.getInt("resp_center_uid"));
				return user;
			}

		});
	}
	
	public List<apar_CreateapMODEL> dropdownacc_id() {
		String sql = "Select * from tbl_account_type";
		return jdbcTemplate.query(sql, new RowMapper<apar_CreateapMODEL>() {
			public apar_CreateapMODEL mapRow(ResultSet rs, int row) throws SQLException {
				apar_CreateapMODEL user = new apar_CreateapMODEL();
				user.setAcc_description(rs.getString("acc_description"));
				user.setAcc_uid(rs.getInt("acc_uid"));
				return user;
			}

		});
	}
	
	public List<apar_CreateapMODEL> getcap() {

		sql = "Select * from tbl_apayable [AP] inner join tbl_responsibility_center [RC] ON RC.resp_center_uid = AP.resp_center_uid inner join tbl_account_type [AT] ON AT.acc_uid = AP.acc_uid";
		
		return jdbcTemplate.query(sql, new RowMapper<apar_CreateapMODEL>() {
			public apar_CreateapMODEL mapRow(ResultSet rs, int row) throws SQLException {
				apar_CreateapMODEL user = new apar_CreateapMODEL();
				user.setAcc_uid(rs.getInt("ap_uid"));
				user.setAp_transaction_num(rs.getString("ap_transaction_num"));
				user.setAp_company_name(rs.getString("ap_company_name"));
				user.setAp_claimant(rs.getString("ap_claimant"));
				user.setResp_center_uid(rs.getInt("resp_center_uid"));
				user.setResp_center_description(rs.getString("resp_center_description"));
				user.setAp_voucher_date(rs.getString("ap_voucher_date"));
				user.setAp_due_date(rs.getString("ap_due_date"));
				user.setAp_amount(rs.getInt("ap_amount"));
				user.setAcc_uid(rs.getInt("acc_uid"));
				user.setAcc_description(rs.getString("acc_description"));
				user.setAp_particulars(rs.getString("ap_particulars"));
				user.setAp_status(rs.getString("ap_status"));
				return user;
			}

		});
	}
	
//	this is for autogenerated column but not identity
	public String getNewTransNo(){
		String sql= "SELECT count(*) as cnt FROM tbl_apayable";
		int cnt = jdbcTemplate.queryForObject(sql, Integer.class);
		return "AP" + String.format("%04d", ++cnt);
	}
}





