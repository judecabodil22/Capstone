package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.financials_collectedtableModel;

public class financials_collectedtableDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public financials_collectedtableDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<financials_collectedtableModel> getCollist() {
		
		sql = "select col_id,col_date,col_no,col_type,col_payer,col_desc,col_amt from tbl_fs_col_info";
		
		return jdbcTemplate.query(sql, new RowMapper<financials_collectedtableModel>() {
			public financials_collectedtableModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_collectedtableModel fc = new financials_collectedtableModel();
				fc.setCol_id(rs.getString("col_id"));
				fc.setCol_date(rs.getDate("col_date"));
				fc.setCol_no(rs.getString("col_no"));
				fc.setCol_type(rs.getString("col_type"));
				fc.setCol_payer(rs.getString("col_payer"));
				fc.setCol_desc(rs.getString("col_desc"));
				fc.setCol_amt(rs.getString("col_amt"));
				return fc;
			}
		});
	}

}
