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

public class DVDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public DVDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<DVModel> dropDownPurpose() {

		sql = "Select purpose_name from disbursement_purpose";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setPurpose_name(rs.getString("purpose_name"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownPayment() {

		sql = "Select payment_mode from mode_of_payment";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setMode_of_payment(rs.getString("payment_mode"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownInstitute() {

		sql = "Select institute_name from disb_institutes";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setInstitute_name(rs.getString("institute_name"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownClaimant() {

		sql = "Select representative_claimant from disb_institutes";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setClaimant_name(rs.getString("representative_claimant"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownFund() {

		sql = "Select fund_source_name from disb_fund_cluster";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setFund_cluster(rs.getString("fund_source_name"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownEmployee() {

		sql = "Select first_name+' '+last_name as Employee_Assigned from disb_officer ";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setEmployee_assigned(rs.getString("employee_assigned"));
				return dvm;
			}

		});
	}
	
	public List<DVModel> dropDownRespCenter() {

		sql = "select resp_center_name from responsibility_center";

		return jdbcTemplate.query(sql, new RowMapper<DVModel>() {
			public DVModel mapRow(ResultSet rs, int row) throws SQLException {
				DVModel dvm = new DVModel();
				dvm.setResponsibility_center(rs.getString("resp_center_name"));
				return dvm;
			}

		});
	}
	
	public boolean submit(DVModel dvm) {

		String sql = "Insert into dv_transaction(dv_no, ors_burs_no, disbursement_purpose, mode_of_payment, institute_name, claimant_name,"
				+ "									address, fund_cluster, date, particulars, responsibility_center, mfo_pap, amount, employee_assigned)" + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { dvm.getDv_no(), dvm.getOrs_burs_no(), dvm.getPurpose_name(), dvm.getMode_of_payment(),
												dvm.getInstitute_name(), dvm.getClaimant_name(), dvm.getAddress(), dvm.getFund_cluster(),
												dvm.getDate(), dvm.getParticulars(), dvm.getResponsibility_center(),
												dvm.getMfo_pap(), dvm.getAmount(), dvm.getEmployee_assigned()});

		return true;

		

	}
	
}
