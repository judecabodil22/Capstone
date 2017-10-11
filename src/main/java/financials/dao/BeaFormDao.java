package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.BeaFormModel;

public class BeaFormDao {

	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public BeaFormDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(BeaFormModel Bea) {

		String sql = "Insert into Users(user_id,user_name,pass_word)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id(), Bea.getUser_name(), Bea.getPass_word()});

		return true;	

	}
	public boolean update(BeaFormModel Bea) {

		sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] {Bea.getUser_name(), Bea.getPass_word(), Bea.getUser_id()});

		return true;
	}
	
	public boolean delete(BeaFormModel Bea) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id()});

		return true;

	}
	
	public boolean select(BeaFormModel Bea) {

		sql = "select * from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id()});

		return true;

	}


public List<BeaFormModel> getUsers() {

	sql = "Select * from USERS";

	return jdbcTemplate.query(sql, new RowMapper<BeaFormModel>() {
		public BeaFormModel mapRow(ResultSet rs, int row) throws SQLException {
			BeaFormModel user = new BeaFormModel();
			user.setUser_id(rs.getString("user_id"));
			user.setUser_name(rs.getString("user_name"));
			user.setPass_word(rs.getString("pass_word"));
			return user;
		}

	});
}
public List<BeaFormModel> findByIDList(BeaFormModel bea) {

	sql = "Select * from USERS " + "WHERE user_id = '" + bea.getUser_id() + "'";

	return jdbcTemplate.query(sql, new RowMapper<BeaFormModel>() {
		public BeaFormModel mapRow(ResultSet rs, int row) throws SQLException {
			BeaFormModel bea = new BeaFormModel();
			bea.setUser_id(rs.getString("user_id"));
			bea.setUser_name(rs.getString("user_name"));
			bea.setPass_word(rs.getString("pass_word"));
			return bea;
		}

	});
}

}
