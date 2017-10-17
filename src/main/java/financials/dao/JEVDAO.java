package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
	
	public JEVModel getByJevNo(String jev_no) {
		List<Object> params = new ArrayList<Object>();
		StringBuilder sql = new StringBuilder("SELECT * FROM ");
		sql.append(this.table);
		sql.append(" WHERE 0=0 ");
		if(jev_no != null){
			sql.append(" AND jev_no=? ");
			params.add(jev_no);
		}
		JEVDAO _this = this;
		
		return jdbcTemplate.query(
				sql.toString(), 
				params.toArray(), 
				new ResultSetExtractor<JEVModel>(){
					public JEVModel extractData(ResultSet rs) throws SQLException, DataAccessException {
						if (rs.next()) {
							return _this.setData(rs);
						}
						return null;
					}
				}
		);
	}
	
	
	public String getNewJevNo(Date jev_date) {
		List<Object> params = new ArrayList<Object>();
		StringBuilder sql = new StringBuilder("SELECT count(*) as cnt FROM ");
		sql.append(this.table);
		sql.append(" WHERE 0=0 ");
		
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat DATE_FORMAT_DASHES = new SimpleDateFormat("yyyy-MM-dd");
		String sjev_date = null;
		if(jev_date != null){
			sjev_date = DATE_FORMAT.format(jev_date);
			sql.append(" AND convert(date, jev_date)=? ");
			params.add(DATE_FORMAT_DASHES.format(jev_date));
		}
		
		int count = jdbcTemplate.queryForObject(sql.toString(), params.toArray(), Integer.class);
		StringBuilder jev_no = new StringBuilder(sjev_date);
		jev_no.append(String.format("%04d", ++count));
		return jev_no.toString();
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
	
	
	public boolean insert(JEVModel model) {
		List<Object> params = new ArrayList<Object>();
		
		StringBuilder sql = new StringBuilder("INSERT INTO ");
		sql.append(this.table);
		sql.append(" ( ");
		sql.append(" jev_no, ");
		sql.append(" jev_date, ");
		sql.append(" fund_uid, ");
		sql.append(" tmp_header_uid, ");
		sql.append(" particulars, ");
		sql.append(" trans_transaction_type_uid, ");
		sql.append(" acc_uid, ");
		sql.append(" resp_center_uid, ");
		sql.append(" status, ");
		sql.append(" prepared_by ");
		sql.append(" ) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");
		
		params.add(model.getJev_no());
		params.add(model.getJev_date());
		params.add(model.getFund_uid());
		params.add(model.getTmp_header_uid());
		params.add(model.getParticulars());
		params.add(model.getTrans_transaction_type_uid());
		params.add(model.getAcc_uid());
		params.add(model.getResp_center_uid());
		params.add(model.getStatus());
		params.add(model.getPrepared_by());
		
		boolean bool = false;
		try {
			jdbcTemplate.update(sql.toString(), params.toArray());
			bool = true;
        } catch (Exception e) {
        	bool = false;
        	e.printStackTrace();
        }
		return bool;
	}
	
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
}
