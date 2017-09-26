package financials.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
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

		String sql = "Insert into Users(user_id,user_name,pass_word)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id(), Bea.getUser_name(), Bea.getPass_word()});

		return true;	

	}
	public boolean update(BeaFormModel Bea) {

		sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] {Bea.getUser_name(), Bea.getPass_word(), Bea.getUser_id()});

		return true;
	}
	
	public boolean delete(BeaFormModel Bea) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { Bea.getUser_id()});

		return true;

	}
}
