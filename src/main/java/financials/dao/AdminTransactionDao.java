package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AdminTransactionModel;

public class AdminTransactionDao {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public AdminTransactionDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<AdminTransactionModel> getTransactions() {

		sql = "Select tbl1.* ,tbl2.trans_description as Parent from tbl_transaction_type tbl1\r\n" + 
				"INNER JOIN tbl_transaction_type tbl2\r\n" + 
				"ON tbl1.trans_transaction_parent_uid = tbl2.trans_transaction_type_uid\r\n" + 
				"	ORDER By Parent ASC";

		return jdbcTemplate.query(sql, new RowMapper<AdminTransactionModel>() {
			public AdminTransactionModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminTransactionModel user = new AdminTransactionModel();
				
				user.setTrans_code(rs.getString("trans_code"));
				user.setTrans_description(rs.getString("trans_description"));
				user.setTrans_transaction_parent_uid(rs.getInt("trans_transaction_parent_uid"));
				user.setTrans_transaction_type_uid(rs.getInt("trans_transaction_type_uid"));
				user.setParent(rs.getString("Parent"));
				
				return user;
			}

		});
	}
	
	public boolean insert(AdminTransactionModel user) {

		
		if(user.getTrans_transaction_parent_uid()==99)
		{
		sql = "Insert into tbl_transaction_type(trans_code,trans_description)" + "VALUES(?,?)";
		
		jdbcTemplate.update(sql, new Object[] { user.getTrans_code(), user.getTrans_description() });

		}		
		
		else
		{
		sql = "Insert into tbl_transaction_type(trans_code,trans_description,trans_transaction_parent_uid)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getTrans_code(), user.getTrans_description(), user.getTrans_transaction_parent_uid() });
		}
		return true;

		

	}
	
	public List<AdminTransactionModel> dropDownType() {

		sql = "Select trans_description, trans_transaction_type_uid from tbl_transaction_type where trans_transaction_parent_uid IS NULL";

		return jdbcTemplate.query(sql, new RowMapper<AdminTransactionModel>() {
			public AdminTransactionModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminTransactionModel user = new AdminTransactionModel();
				user.setTrans_description(rs.getString("trans_description"));
				user.setTrans_transaction_type_uid(rs.getInt("trans_transaction_type_uid"));
				return user;
			}

		});
	}
	
	public boolean delete(AdminTransactionModel user) {

		sql = "Delete from tbl_transaction_type " + "WHERE trans_transaction_type_uid = ?";

		jdbcTemplate.update(sql, new Object[] { user.getTrans_transaction_type_uid() });
		

		return true;

	}
	
	public boolean update(AdminTransactionModel user) {

		sql = "Update tbl_transaction_type " + "Set trans_code = ?, trans_description = ? " + "WHERE trans_transaction_type_uid = ?";

		jdbcTemplate.update(sql, new Object[] { user.getTrans_code(), user.getTrans_description(), user.getTrans_transaction_type_uid() });

		return true;
	}
	
}
