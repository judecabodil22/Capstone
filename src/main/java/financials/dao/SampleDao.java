package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.SampleModel;


public class SampleDao
{
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	
	public SampleDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean insert(SampleModel jude) {

		String sql = "Insert into Users(user_id,username,password)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] {jude.getUser_id(), jude.getUsername(), jude.getPassword()});

		return true;		

	}
	
	public boolean update(SampleModel user) {

		sql = "Update Users " + "Set username = ?, password = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getUser_id() });

		return true;
	}
	
	public List<SampleModel> getUsers() {

		sql = "Select * from USERS";

		return jdbcTemplate.query(sql, new RowMapper<SampleModel>() {
			public SampleModel mapRow(ResultSet rs, int row) throws SQLException {
				SampleModel user = new SampleModel();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				
				return user;
			}

		});
	}
	
	public List<SampleModel> findByIDList(SampleModel user) {

		sql = "Select * from USERS " + "WHERE user_id = '" + user.getUser_id() + "'";

		return jdbcTemplate.query(sql, new RowMapper<SampleModel>() {
			public SampleModel mapRow(ResultSet rs, int row) throws SQLException {
				SampleModel user = new SampleModel();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}
	
	
	
	
	
}
