package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.GLSampMod;

public class GLSampDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";

	public GLSampDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);

	}

	public boolean insert(GLSampMod samp) {

		String sql = "Insert into Users(user_id,username,password)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { samp.getUser_id(), samp.getUsername(), samp.getPassword() });

		return true;

	}

	public boolean update(GLSampMod sampUp) {

		sql = "Update Users " + "Set username = ?, password = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { sampUp.getUsername(), sampUp.getPassword(), sampUp.getUser_id() });

		return true;
	}

	public boolean delete(GLSampMod sampDel) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { sampDel.getUser_id() });

		return true;

	}
	
	public List<GLSampMod> getUsers() {

		sql = "Select * from USERS";

		return jdbcTemplate.query(sql, new RowMapper<GLSampMod>() {
			public GLSampMod mapRow(ResultSet rs, int row) throws SQLException {
				GLSampMod user = new GLSampMod();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}
	
	//public -> (class name/object) -> method name(arguements)
	public List<GLSampMod> findByIDList(GLSampMod user) {

		sql = "Select * from USERS " + "WHERE user_id = '" + user.getUser_id() + "'";

		return jdbcTemplate.query(sql, new RowMapper<GLSampMod>() {
			public GLSampMod mapRow(ResultSet rs, int row) throws SQLException {
				GLSampMod user = new GLSampMod();
				user.setUser_id(rs.getString("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}


}
