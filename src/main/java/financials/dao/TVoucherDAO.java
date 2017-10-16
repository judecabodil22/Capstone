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

		sql = "Select ap_institute_name, ap_purpose, ap_date, ap_amount, ap_status from tbl_apayable ";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setAp_institute_name(rs.getString("ap_institute_name"));
				tvm.setPurpose(rs.getString("ap_purpose"));
				tvm.setDate(rs.getString("ap_date"));
				tvm.setAmount(rs.getString("ap_amount"));
				tvm.setStatus(rs.getString("ap_status"));
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

		sql = "Select employee_no from disb_officer";

		return jdbcTemplate.query(sql, new RowMapper<TVoucherModel>() {
			public TVoucherModel mapRow(ResultSet rs, int row) throws SQLException {
				TVoucherModel tvm = new TVoucherModel();
				tvm.setEmployee_no(rs.getString("employee_no"));
				return tvm;
			}

		});
	}
}

