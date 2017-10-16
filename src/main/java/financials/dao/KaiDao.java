package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.KaiModel;


public class KaiDao 
{
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public KaiDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(KaiModel Abi) {

		String sql = "Insert into Users(user_id,username,password)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] {Abi.getUser_id(), Abi.getUsername(), Abi.getPassword()});

		return true;
		
		
	}
	public boolean update(KaiModel Abi) {

		sql = "Update Users " + "Set username = ?, password = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Abi.getUsername(), Abi.getPassword(), Abi.getUser_id() });

		return true;
	}
	
	public boolean delete(KaiModel Abi) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Abi.getUser_id() });

		return true;
	}
	
	public List<KaiModel> getUsers() {

		sql = "Select * from USERS";

		return jdbcTemplate.query(sql, new RowMapper<KaiModel>() {
			public KaiModel mapRow(ResultSet rs, int row) throws SQLException {
				KaiModel user = new KaiModel();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}
	
	public List<KaiModel> findByIDList(KaiModel user) {

		sql = "Select * from USERS " + "WHERE user_id = '" + user.getUser_id() + "'";

		return jdbcTemplate.query(sql, new RowMapper<KaiModel>() {
			public KaiModel mapRow(ResultSet rs, int row) throws SQLException {
				KaiModel user = new KaiModel();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}
}



