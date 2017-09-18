package financials.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.KaiModel;
import financials.model.UserModel;

public class KaiDao 
{
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public KaiDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean c_insert(KaiModel Abi) {

		String sql = "Insert into Users(user_id,user_name,pass_word)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] {Abi.getUser_id(), Abi.getUser_name(), Abi.getPass_word()});

		return true;
		
		
	}
	public boolean c_update(KaiModel Abi) {

		sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Abi.getUser_name(), Abi.getPass_word(), Abi.getUser_id() });

		return true;
	}
	
	public boolean c_delete(KaiModel Abi) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Abi.getUser_id() });

		return true;
	}
}



