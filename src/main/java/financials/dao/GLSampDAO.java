package financials.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.GLSampMod;

public class GLSampDAO 
{
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public GLSampDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	
	}
	
	public boolean insert(GLSampMod samp) {

		String sql = "Insert into Users(user_id,user_name,pass_word)" + "VALUES(?,?,?)";

		jdbcTemplate.update(sql, new Object[] {samp.getUser_id(), samp.getUser_name(), samp.getPass_word()  });

		return true;

	}
	
	public boolean update(GLSampMod sampUp) {

		sql = "Update Users " + "Set user_name = ?, pass_word = ? " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { sampUp.getUser_name(), sampUp.getPass_word(), sampUp.getUser_id() });

		return true;
	}
	
	public boolean delete(GLSampMod sampDel) {

		sql = "Delete from Users " + "WHERE user_id = ?";

		jdbcTemplate.update(sql, new Object[] { sampDel.getUser_id() });

		return true;

	}
	

}
