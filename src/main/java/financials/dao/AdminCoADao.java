package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AdminCoAModel;
import financials.model.AdminTransactionModel;
import financials.model.AdminCoAModel;
import financials.model.AdminCoAModel;

public class AdminCoADao {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public AdminCoADao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	public List<AdminCoAModel> dropDownType() {

		
		sql = "Select tbl1.*, tbl2.acc_description as Parent from tbl_account_type tbl1		\r\n" + 
				"	INNER JOIN tbl_account_type tbl2  \r\n" + 
				"		ON tbl1.acc_parent_uid = tbl2.acc_uid\r\n" + 
				"			ORDER BY Parent asc";
		
		return jdbcTemplate.query(sql, new RowMapper<AdminCoAModel>() {
			public AdminCoAModel mapRow(ResultSet rs, int row) throws SQLException {
				AdminCoAModel user = new AdminCoAModel();
				user.setAcc_description(rs.getString("acc_description"));
				user.setAcc_parent_uid(rs.getInt("acc_parent_uid"));
				user.setParent(rs.getString("Parent"));
				return user;
			}

		});
	}
	
public boolean insert(AdminCoAModel user) {

		
		
		
		if(user.getAcc_parent_uid() == 1 || user.getAcc_parent_uid() == 7)
		{   
			
			
			sql = "Insert into tbl_coa (coa_code, coa_description, coa_account_flag, coa_active_flag, acc_parent_uid) values (?,?,?,?,?)";

			jdbcTemplate.update(sql, new Object[] { user.getCoa_code(), user.getCoa_description(),0, user.getCoa_active_flag(), user.getAcc_parent_uid() });

		}
		
		else if(user.getAcc_parent_uid() == 3 || user.getAcc_parent_uid() == 5 || user.getAcc_parent_uid() == 4)
		{	
			sql = "Insert into tbl_coa (coa_code, coa_description, coa_account_flag, coa_active_flag, acc_parent_uid) values (?,?,?,?,?)";

			
			jdbcTemplate.update(sql, new Object[] { user.getCoa_code(), user.getCoa_description(),1, user.getCoa_active_flag(), user.getAcc_parent_uid() });

		}
		else
		{
			System.out.print("Error");
		}
		
		return true;
 
	}
	
	
public List<AdminCoAModel> getCoA() {

	sql = "Select tbl1.*, tbl2.acc_description as Parent from tbl_coa tbl1\r\n" + 
			"			INNER JOIN tbl_account_type tbl2\r\n" + 
			"			On tbl1.acc_parent_uid= tbl2.acc_uid";

	return jdbcTemplate.query(sql, new RowMapper<AdminCoAModel>() {
		public AdminCoAModel mapRow(ResultSet rs, int row) throws SQLException {
			AdminCoAModel user = new AdminCoAModel();
			
			user.setCoa_account_uid(rs.getInt("coa_account_uid"));
			user.setCoa_code(rs.getInt("coa_code"));
			user.setCoa_description(rs.getString("coa_description"));
			user.setCoa_account_flag(rs.getInt("coa_account_flag"));
			user.setCoa_active_flag(rs.getInt("coa_active_flag"));
			user.setAcc_parent_uid(rs.getInt("acc_parent_uid"));
			user.setParent(rs.getString("Parent"));
			
			return user;
		}

	});
}

public boolean delete(AdminCoAModel user) {

	sql = "Delete from tbl_coa " + "WHERE coa_account_uid = ?";

	jdbcTemplate.update(sql, new Object[] { user.getCoa_account_uid() });
	

	return true;

}
	

}
