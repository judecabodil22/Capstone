package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.C_TransactionsModel;
import financials.model.KaiModel;
import financials.model.UserModel;
import financials.model.apar_CreateapMODEL;

public class C_TransactionsDao
{
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public C_TransactionsDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//insert
	public boolean insert(C_TransactionsModel Trans) {

		String sql = "Insert into tbl_ctransactions"
				+ "(col_ORno,"
				+ "col_IGPname,"
				+ "col_institune_name,"
				+ "col_desc,"
				+ "col_amount,"
				+ "col_idate,"
				+ "col_duedate,"
				+ "col_stat)"
				+ "VALUES(?,?,?,?,?,getdate(),getdate()+30,'Pending')";

		jdbcTemplate.update(sql, new Object[] {
				
				Trans.getCol_ORno(),
				Trans.getCol_IGPname(),
				Trans.getCol_institune_name(),
				Trans.getCol_desc(),
				Trans.getCol_amount(),
				Trans.getCol_idate(),
				Trans.getCol_duedate(),
				Trans.getCol_stat()});

		return true;
		
		
	}
	
	public List<C_TransactionsModel> dropDownType() {
		String sql = "Select C_Type from dbo.tbl_IGP_Type";
		return jdbcTemplate.query(sql, new RowMapper<C_TransactionsModel>() {
			public C_TransactionsModel mapRow(ResultSet rs, int row) throws SQLException {
				C_TransactionsModel user = new C_TransactionsModel();
				user.setC_Type(rs.getString("C_Type"));
				
				return user;
			}

		});
	}

	public List<C_TransactionsModel> view() {

		sql = "Select * from Cdb_Transactions";

		return jdbcTemplate.query(sql, new RowMapper<C_TransactionsModel>() {
			public C_TransactionsModel mapRow(ResultSet rs, int row) throws SQLException {
				C_TransactionsModel user = new C_TransactionsModel();
				
				user.setCol_IGPid(rs.getInt("col_IGPid"));
				user.setCol_IGPname(rs.getString("col_IGPname"));
				user.setCol_institune_name(rs.getString("col_institune_name"));
				user.setCol_desc(rs.getString("col_desc"));
				user.setCol_amount(rs.getString("col_amount"));
				user.setCol_idate(rs.getDate("col_idate"));
				
				
			return user;
			}

		});
	}
	//autogenerated Invoice
	public String getNewVouchNo(){
		String sql= "SELECT count(*) as cnt FROM dbo.col_tbl_transactions";
		int cnt = jdbcTemplate.queryForObject(sql, Integer.class);
		return "CV" + String.format("%04d", ++cnt);
	}
}
