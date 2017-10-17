package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.UserModel;

public class UserDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;
	
	public UserDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public UserModel get(String id, String username, String password) {
		List<Object> params = new ArrayList<Object>();
		StringBuilder sql = new StringBuilder("SELECT * FROM users");
		sql.append(" WHERE 0=0 ");
		
		// only add parameter when value is not null
		// append condition accordingly
		if(id != null){
			sql.append(" AND user_id=? ");
			params.add(id);
		}
		if(username != null){
			sql.append(" AND username=? ");
			params.add(username);
		}
		if(password != null){
			sql.append(" AND password=? ");
			params.add(password);
		}
		
		return jdbcTemplate.query(
				sql.toString(), 
				params.toArray(), 
				new ResultSetExtractor<UserModel>(){
					public UserModel extractData(ResultSet rs) throws SQLException,
							DataAccessException {
						if (rs.next()) {
							
							UserModel model = new UserModel(
									rs.getInt("user_id"),
									rs.getString("username"),
									rs.getString("password")); //avoid storing password anywhere
							return model;
						}
						return null;
					}
		});
	}
	
	
	public boolean insert(UserModel modelUser) {
		List<Object> params = new ArrayList<Object>();
		
		StringBuilder sql = new StringBuilder("INSERT INTO users");
		sql.append(" VALUES ( ");
		sql.append(" ? ");
		params.add(modelUser.getUser_id());
		sql.append(" , ? ");
		params.add(modelUser.getUsername());
		sql.append(" , ? ");
		params.add(modelUser.getPassword());
		sql.append(" ) ");
		boolean bool = false;
		try {
			jdbcTemplate.update(sql.toString(), params.toArray());
			bool = true;
        } catch (Exception e) {
	        // TODO: handle exception
        	bool = false;
        	e.printStackTrace();
        }
		return bool;
	}
	
	
	
//	public boolean insert(UserModel user) {
//		String sql = "Insert into Users(user_id,username,password)" + "VALUES(?,?,?)";
//		jdbcTemplate.update(sql, new Object[] { user.getUser_id(), user.getUsername(), user.getPassword() });
//		return true;
//	}

	public boolean update(UserModel user) {
		String sql = "Update Users " + "Set username = ?, password = ? " + "WHERE user_id = ?";
		jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getUser_id() });
		return true;
	}

	public boolean delete(UserModel user) {
		String sql = "Delete from Users " + "WHERE user_id = ?";
		jdbcTemplate.update(sql, new Object[] { user.getUser_id() });
		return true;
	}

	public List<UserModel> getUsers() {
		String sql = "Select * from USERS";
		return jdbcTemplate.query(sql, new RowMapper<UserModel>() {
			public UserModel mapRow(ResultSet rs, int row) throws SQLException {
				UserModel user = new UserModel();
				user.setUser_id(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}
		});
	}

	public List<UserModel> findByIDList(UserModel user) {
		String sql = "Select * from USERS " + "WHERE user_id = '" + user.getUser_id() + "'";
		return jdbcTemplate.query(sql, new RowMapper<UserModel>() {
			public UserModel mapRow(ResultSet rs, int row) throws SQLException {
				UserModel user = new UserModel();
				user.setUser_id(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				return user;
			}

		});
	}

	public List<UserModel> dropDownId() {
		String sql = "Select user_id from Users";
		return jdbcTemplate.query(sql, new RowMapper<UserModel>() {
			public UserModel mapRow(ResultSet rs, int row) throws SQLException {
				UserModel user = new UserModel();
				user.setUser_id(rs.getInt("user_id"));
				return user;
			}

		});
	}


	public List<UserModel> UserValidation(UserModel user) {
		String sql = "Select user_id from Users where "
				+ "username = ? "
				+ "AND "
				+ "password = ? ";
		return jdbcTemplate.query(sql, new Object[] {user.getUsername(), user.getPassword()}, new RowMapper<UserModel>() {
			public UserModel mapRow(ResultSet rs, int row) throws SQLException {
				UserModel user = new UserModel();
				return user;
			}
		});
	}
}
