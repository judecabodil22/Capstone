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

		String sql = "Insert into Users(user_id,username,password)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id(), Bea.getUsername(), Bea.getPassword()});

		return true;	

	}
	public boolean update(BeaFormModel Bea) {

		sql = "Update Users " + "Set username = ?, password = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] {Bea.getUsername(), Bea.getPassword(), Bea.getUser_id()});

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
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
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
			bea.setUsername(rs.getString("username"));
			bea.setPassword(rs.getString("password"));
			return bea;
		}

	});
}

}
