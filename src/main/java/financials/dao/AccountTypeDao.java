package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AccountTypeModel;
import financials.model.AdminTransactionModel;
import financials.model.AccountTypeModel;
import financials.model.AccountTypeModel;


public class AccountTypeDao {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public AccountTypeDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
public boolean insert(AccountTypeModel user) {

		
		if(user.getAcc_parent_uid()==99)
		{
		sql = "Insert into tbl_account_type(acc_code,acc_description)" + "VALUES(?,?)";
		
		jdbcTemplate.update(sql, new Object[] {user.getAcc_code(), user.getAcc_description()});

		}		
		
		else
		{
		sql = "Insert into tbl_account_type(acc_code,acc_description,acc_parent_uid)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getAcc_code(), user.getAcc_description(), user.getAcc_parent_uid() });
		}
		return true;

	}

public List<AccountTypeModel> dropDownType() {

	sql = "Select acc_description,acc_uid from tbl_account_type where acc_parent_uid IS NULL";

	return jdbcTemplate.query(sql, new RowMapper<AccountTypeModel>() {
		public AccountTypeModel mapRow(ResultSet rs, int row) throws SQLException {
			AccountTypeModel user = new AccountTypeModel();
			user.setAcc_description(rs.getString("acc_description"));
			user.setAcc_uid(rs.getInt("acc_uid"));
			return user;
		}

	});
}

public List<AccountTypeModel> getAccountType() {

	sql = "Select tbl1.*, tbl2.acc_description as Parent from tbl_account_type tbl1		\r\n" + 
			"	INNER JOIN tbl_account_type tbl2  \r\n" + 
			"		ON tbl1.acc_parent_uid = tbl2.acc_uid\r\n" + 
			"			ORDER BY Parent asc";

	return jdbcTemplate.query(sql, new RowMapper<AccountTypeModel>() {
		public AccountTypeModel mapRow(ResultSet rs, int row) throws SQLException {
			AccountTypeModel user = new AccountTypeModel();
			
			user.setAcc_uid(rs.getInt("acc_uid"));
			user.setAcc_code(rs.getString("acc_code"));
			user.setAcc_description(rs.getString("acc_description"));
			user.setAcc_parent_uid(rs.getInt("acc_parent_uid"));
			user.setParent(rs.getString("Parent"));
			return user;
		}

	});
}

public boolean delete(AccountTypeModel user) {

	sql = "Delete from tbl_account_type " + "WHERE acc_uid = ?";

	jdbcTemplate.update(sql, new Object[] { user.getAcc_uid() });
	

	return true;

}

public boolean update(AccountTypeModel user) {

	sql = "Update tbl_account_type SET acc_code = ?, acc_description = ? WHERE acc_uid = ?";

	jdbcTemplate.update(sql, new Object[] { user.getAcc_code(), user.getAcc_description(), user.getAcc_uid() });

	return true;
}



}
