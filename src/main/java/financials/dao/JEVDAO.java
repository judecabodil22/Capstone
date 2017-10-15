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

import financials.model.JEVModel;
import financials.model.UserModel;

public class JEVDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;
	
	public JEVDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public String table = "tbl_jev";
	public JEVModel setData(ResultSet rs) throws SQLException {
		JEVModel model = new JEVModel(
				rs.getInt("jev_id"),
				rs.getString("jev_no"),
				rs.getTimestamp("jev_date"),
				rs.getInt("fund_uid"),
				rs.getInt("tmp_header_uid"),
				rs.getString("particulars"),
				rs.getInt("trans_transaction_type_uid"),
				rs.getInt("acc_uid"),
				rs.getFloat("amount"),
				rs.getBoolean("account_flag"),
				rs.getInt("resp_center_uid"),
				rs.getString("status"),
				rs.getInt("prepared_by"),
				rs.getTimestamp("approved_date"),
				rs.getInt("approved_by"),
				rs.getTimestamp("disapproved_date"),
				rs.getInt("disapproved_by"),
				rs.getString("remarks")
		);
		return model;
	}
	public List<JEVModel> list() {
		List<Object> params = new ArrayList<Object>();
		StringBuilder sql = new StringBuilder("SELECT * FROM ");
		sql.append(this.table);
		sql.append(" WHERE 0=0 ");
		
		JEVDAO _this = this;
		return jdbcTemplate.query(
				sql.toString(), 
				params.toArray(), 
				new RowMapper<JEVModel>() {
					public JEVModel mapRow(ResultSet rs, int row) throws SQLException {
						return _this.setData(rs);
					}
				}
		);
	}
	public JEVModel get() {
		List<Object> params = new ArrayList<Object>();
		StringBuilder sql = new StringBuilder("SELECT * FROM ");
		sql.append(this.table);
		sql.append(" WHERE 0=0 ");
		JEVDAO _this = this;
		return jdbcTemplate.query(
				sql.toString(), 
				params.toArray(), 
				new ResultSetExtractor<JEVModel>(){
					public JEVModel extractData(ResultSet rs) throws SQLException,
							DataAccessException {
						if (rs.next()) {
							return _this.setData(rs);
						}
						return null;
					}
				}
		);
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
			sql.append(" AND user_name=? ");
			params.add(username);
		}
		if(password != null){
			sql.append(" AND pass_word=? ");
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
									rs.getString("user_id"),
									rs.getString("user_name"),
									rs.getString("pass_word")); //avoid storing password anywhere
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
		params.add(modelUser.getUser_name());
		sql.append(" , ? ");
		params.add(modelUser.getPass_word());
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
	
	public boolean update(UserModel user) {
		String sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";
		jdbcTemplate.update(sql, new Object[] { user.getUser_name(), user.getPass_word(), user.getUser_id() });
		return true;
	}

	public boolean delete(UserModel user) {
		String sql = "Delete from Users " + "WHERE user_id = ?";
		jdbcTemplate.update(sql, new Object[] { user.getUser_id() });
		return true;
	}
}
