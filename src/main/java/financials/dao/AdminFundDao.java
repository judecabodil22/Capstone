package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AdminFundModel;

public class AdminFundDao {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public AdminFundDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(AdminFundModel user) {

		String sql = "Insert into tbl_fund(fund_code, fund_description)" + "VALUES(?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getFund_code(), user.getFund_description()});

		return true;

		

	}
	
	public boolean update(AdminFundModel user) {

		sql = "Update tbl_fund " + "Set fund_code = ?, fund_description = ? " + "WHERE fund_uid = ?";

		jdbcTemplate.update(sql, new Object[] { user.getFund_code(), user.getFund_description(), user.getFund_uid()});

		return true;
	}

	
	public List<AdminFundModel> getFunds() {

		sql = "Select * from tbl_fund";

		return jdbcTemplate.query(sql, new RowMapper<AdminFundModel>() {
			public AdminFundModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminFundModel user = new AdminFundModel();
				user.setFund_uid(rs.getInt("fund_uid"));
				user.setFund_code(rs.getInt("fund_code"));
				user.setFund_description(rs.getString("fund_description"));
				return user;
			}

		});
	}
	
	
	
	public List<AdminFundModel> findByIDList(AdminFundModel user) {

		sql = "Select * from tbl_fund " + "WHERE fund_uid = '" + user.getFund_uid() + "'";

		return jdbcTemplate.query(sql, new RowMapper<AdminFundModel>() {
			public AdminFundModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminFundModel user = new AdminFundModel();
				user.setFund_uid(rs.getInt("fund_uid"));
				user.setFund_code(rs.getInt("fund_code"));
				user.setFund_description(rs.getString("fund_description"));
				return user;
			}

		});
	}
	
	
	public boolean delete(AdminFundModel fund) {

		sql = "Delete from tbl_fund " + "WHERE fund_uid = ?";

		jdbcTemplate.update(sql, new Object[] { fund.getFund_uid() });

		return true;

	}

	
	
	
	
	
	

}
