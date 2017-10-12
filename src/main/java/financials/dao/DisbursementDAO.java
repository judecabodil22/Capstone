package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.DisbursementSampleModel;
import financials.model.UserModel;

public class DisbursementDAO {

	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public DisbursementDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(DisbursementSampleModel dsm) {

		String sql = "Insert into Users(user_id,user_name,pass_word)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { dsm.getUser_id(), dsm.getUser_name(), dsm.getPass_word() });

		return true;

		

	}
	
	public boolean update(DisbursementSampleModel user) {

		sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { user.getUser_name(), user.getPass_word(), user.getUser_id() });

		return true;
	}
	
	public boolean delete(DisbursementSampleModel user) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { user.getUser_id() });

		return true;

	}
	
	public List<DisbursementSampleModel> getUsers() {

		sql = "Select * from USERS";

		return jdbcTemplate.query(sql, new RowMapper<DisbursementSampleModel>() {
			public DisbursementSampleModel mapRow(ResultSet rs, int row) throws SQLException {
				DisbursementSampleModel dsm = new DisbursementSampleModel();
				dsm.setUser_id(rs.getString("user_id"));
				dsm.setUser_name(rs.getString("user_name"));
				dsm.setPass_word(rs.getString("pass_word"));
				return dsm;
			}

		});
	}
	
	public List<DisbursementSampleModel> findByIDList (DisbursementSampleModel dsm) {

		sql = "Select * from USERS " + "WHERE user_id = '" + dsm.getUser_id() + "'";

		return jdbcTemplate.query(sql, new RowMapper<DisbursementSampleModel>() {
			public DisbursementSampleModel mapRow(ResultSet rs, int row) throws SQLException {
				DisbursementSampleModel dsm = new DisbursementSampleModel();
				dsm.setUser_id(rs.getString("user_id"));
				dsm.setUser_name(rs.getString("user_name"));
				dsm.setPass_word(rs.getString("pass_word"));
				return dsm;
			}

		});
	
}
}
