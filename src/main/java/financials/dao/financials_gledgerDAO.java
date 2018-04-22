package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.financials_gledgerModel;

public class financials_gledgerDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public financials_gledgerDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<financials_gledgerModel> getPetty_cash() {
		
		sql = "SP_petgl";
			
			return jdbcTemplate.query(sql, new RowMapper<financials_gledgerModel>() {
				public financials_gledgerModel mapRow (ResultSet rs,int row) throws SQLException {
					financials_gledgerModel glpc = new financials_gledgerModel();
					
					
					glpc.setJev_date(rs.getString("jev_date"));
					
					
					glpc.setJevd_dbamt(rs.getString("jevd_dbamt"));
			
					glpc.setJevd_cramt(rs.getString("jevd_cramt"));	
					return glpc;
				}
			});
		}

}
