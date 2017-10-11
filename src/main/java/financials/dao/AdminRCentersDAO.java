package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AdminRCentersModel;



public class AdminRCentersDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public AdminRCentersDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(AdminRCentersModel user) {

		String sql = "Insert into tbl_responsibility_center(resp_center_code,resp_center_acronym,resp_center_description) Values(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getResp_center_code(), user.getResp_center_acronym(), user.getResp_center_description() });

		return true;

		

	}
	
	public List<AdminRCentersModel> getRC() {

		sql = "Select * from tbl_responsibility_center";

		return jdbcTemplate.query(sql, new RowMapper<AdminRCentersModel>() {
			public AdminRCentersModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminRCentersModel user = new AdminRCentersModel();
				user.setResp_center_uid(rs.getInt("resp_center_uid"));
				user.setResp_center_code(rs.getString("resp_center_code"));
				user.setResp_center_acronym(rs.getString("resp_center_acronym"));
				user.setResp_center_description(rs.getString("resp_center_description"));
				return user;
			}

		});
	}
	
	public boolean delete(AdminRCentersModel user) {

		sql = "Delete from tbl_responsibility_center " + "WHERE resp_center_uid = ?";

		jdbcTemplate.update(sql, new Object[] { user.getResp_center_uid() });

		return true;

	}
	
	public boolean update(AdminRCentersModel user) {

		sql = "Update tbl_responsibility_center SET resp_center_code = ?, resp_center_acronym = ?, resp_center_description = ? where resp_center_uid = ?";

		jdbcTemplate.update(sql, new Object[] { user.getResp_center_code(), user.getResp_center_acronym(), user.getResp_center_description(), user.getResp_center_uid() });

		return true;
	}
	
	
	
}
