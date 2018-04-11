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
		
		sql = "select concat(year(ji.jev_date),'-' ,left(convert(varchar,ji.jev_date,107),3)) as 'Date', \r\n" +
				  "day(ji.jev_date) as ' ', \r\n" +
				  "[Items] = ' ', \r\n" +
				  "jd.jevd_dbamt as 'Debit Amount' \r\n" +
				  "concat(year(ji.jev_date),'-' ,left(convert(varchar,ji.jev_date,107),3)) as 'Date', \r\n" +
				  "day(ji.jev_date) as ' ', \r\n" +
				  "[Items] = ' ', \r\n" +
				  "jd.jevd_cramt as 'Credit Amount' \r\n" +
				  "from tbl_fs_jev_info as ji \r\n" +
				  "inner join tbl_fs_jev_details as jd \r\n" +
				  "on ji.jev_id = jd.jev_id \r\n" +
				  "where jd.dbcoa_name = 'Petty Cash' \r\n" +
				  "and jd.crcoa_name = 'Petty Cash' \r\n" +
				  "and ji.jev_post_status = '1' \r\n" +
				  "order by ji.jev_date";
			
			return jdbcTemplate.query(sql, new RowMapper<financials_gledgerModel>() {
				public financials_gledgerModel mapRow (ResultSet rs,int row) throws SQLException {
					financials_gledgerModel glpc = new financials_gledgerModel();
					
					glpc.setJev_id(rs.getInt("jev_id"));
					glpc.setJev_date(rs.getString("jev_date"));
					glpc.setJev_no(rs.getString("jev_no"));
					glpc.setJev_post_status(rs.getString("jev_post_status"));
					glpc.setJevd_id(rs.getInt("jevd_id"));
					glpc.setDbcoa_name(rs.getString("dbcoa_name"));
					glpc.setJevd_dbamt(rs.getString("jevd_dbamt"));
					glpc.setCrcoa_name(rs.getString("crcoa_name"));
					glpc.setJevd_cramt(rs.getString("jevd_cramt"));	
					return glpc;
				}
			});
		}

}
