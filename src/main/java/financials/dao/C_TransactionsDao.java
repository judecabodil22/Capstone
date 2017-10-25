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

public class C_TransactionsDao
{
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public C_TransactionsDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public boolean insert(C_TransactionsModel Trans) {

		String sql = "Insert into Cdb_Transactions(Type_ID,C_Payee,C_TransDesc,C_Payment,C_Date_Paid)" + "VALUES(?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] {Trans.getType_ID(), Trans.getC_Payee(), Trans.getC_TransDesc(), Trans.getC_Payment(), Trans.getC_Date_Paid() });

		return true;
		
		
	}
	
	public List<C_TransactionsModel> dropDownType() {
		String sql = "Select * from tbl_IGP_Type";
		return jdbcTemplate.query(sql, new RowMapper<C_TransactionsModel>() {
			public C_TransactionsModel mapRow(ResultSet rs, int row) throws SQLException {
				C_TransactionsModel user = new C_TransactionsModel();
				user.setC_Type(rs.getString("C_Type"));
				user.setType_ID(rs.getInt("Type_ID"));
				
				return user;
			}

		});
	}

}
