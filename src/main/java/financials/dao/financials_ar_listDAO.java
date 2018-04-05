package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.financials_ar_listModel;

public class financials_ar_listDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public financials_ar_listDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<financials_ar_listModel> getArlist() {
		
		sql = "select ji.jev_id, ji.jev_date, ji.jev_no, jd.jevd_id, jd.crcoa_name, jd.jevd_cramt, jd.jevd_expl \r\n" +
		      "from tbl_fs_jev_info ji \r\n" +
			  "inner join tbl_fs_jev_details jd on ji.jev_id = jd.jev_id \r\n" +
		      "where jd.crcoa_name like '%Receivable%' \r\n" +
			   "order by ji.jev_no";
		
		return jdbcTemplate.query(sql, new RowMapper<financials_ar_listModel>() {
			public financials_ar_listModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_ar_listModel h3h3 = new financials_ar_listModel();
				h3h3.setJev_id(rs.getString("jev_id"));
				h3h3.setJev_date(rs.getString("jev_date"));
				h3h3.setJev_no(rs.getString("jev_no"));
				h3h3.setJevd_id(rs.getString("jevd_id"));
				h3h3.setCrcoa_name(rs.getString("crcoa_name"));
				h3h3.setJevd_cramt(rs.getString("jevd_cramt"));
				h3h3.setJevd_expl(rs.getString("jevd_expl"));
				return h3h3;
			}
		});
	}
}
