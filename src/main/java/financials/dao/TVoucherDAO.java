package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.DVModel;
import financials.model.DisbursementSampleModel;
import financials.model.TVoucherModel;
import financials.model.tblreportsModel;

public class TVoucherDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;

	public TVoucherDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public List<TVoucherModel> getList() {

		sql = "Select * from tbl_apayable " + "WHERE ap_status = 'Pending'";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setAp_uid(rs.getString("ap_uid"));
				tvm.setAp_institute_name(rs.getString("ap_institute_name"));
				tvm.setDate(rs.getString("ap_date"));
				tvm.setAmount(rs.getString("ap_amount"));
				tvm.setAp_status(rs.getString("ap_status"));
				tvm.setClaim_name(rs.getString("claimant_name"));
				tvm.setResp_center(rs.getString("ap_resp_center"));
				
				return tvm;
			}
		});
	}
	
	public List<TVoucherModel> dropDownPurpose() {

		sql = "Select purpose_name from disbursement_purpose";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setPurpose_name(rs.getString("purpose_name"));
				return tvm;
			}

		});
	}
	
	public List<TVoucherModel> dropDownPayment() {

		sql = "Select payment_mode from mode_of_payment";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setMode_of_payment(rs.getString("payment_mode"));
				return tvm;
			}

		});
	}
	
	public List<TVoucherModel> dropDownFund() {

		sql = "Select fund_source_name from disb_fund_cluster";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setFund_cluster(rs.getString("fund_source_name"));
				return tvm;
			}

		});
	}
	
	public List<TVoucherModel> dropDownRespCenter() {

		sql = "select resp_center_name from responsibility_center";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setResponsibility_center(rs.getString("resp_center_name"));
				return tvm;
			}

		});
	}
	
	public List<TVoucherModel> dropDownEmployee() {

		sql = "Select first_name+' '+last_name as Employee_Assigned from disb_officer ";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setEmployee_assigned(rs.getString("employee_assigned"));
				return tvm;
			}

		});
	}
	
	public boolean submit(TVoucherModel tvm) {

		String sql = "Insert into dv_transaction(dv_no, ors_burs_no, disbursement_purpose, mode_of_payment, institute_name, claimant_name,"
						+ "fund_cluster, date, particulars, responsibility_center, mfo_pap, amount, employee_assigned)" 
						+ "VALUES (concat(year(getdate()), '-', iif(convert(int, month(getdate())) <= '9', concat('0', convert(int,month(getdate()))), convert(varchar, month(getdate()))), '-', '1000' + '1'),?,?,?,?,?,?,getdate(),?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { tvm.getOrs_burs_no(), tvm.getPurpose_name(), tvm.getMode_of_payment(),
												tvm.getInstitute(), tvm.getClaimant_name(), tvm.getFund_cluster(),
												tvm.getParticulars(), tvm.getResponsibility_center(),
												tvm.getMfo_pap(), tvm.getDv_amount(), tvm.getEmployee_assigned()});

		return true;
		
	}
	
	public boolean update(TVoucherModel tvm) {

		sql = "Update tbl_apayable " + "Set ap_status = 'Paid' " + "WHERE ap_uid = ?";

		jdbcTemplate.update(sql, new Object[] { tvm.getAp_uid() });

		return true;
	}
	
}

