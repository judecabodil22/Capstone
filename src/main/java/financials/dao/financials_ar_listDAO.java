package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.AccountTypeModel;
import financials.model.financials_ap_listModel;
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
		
		sql = "select arl.ar_id, ji.jev_date, ji.jev_no, jd.crcoa_name, jd.jevd_cramt, jd.jevd_expl, arl.ar_status from tbl_fs_arlist as arl, \r\n" + 
				  " tbl_fs_jev_info as ji, tbl_fs_jev_details as jd /r/n" +
				  " where arl.jev_id = ji.jev_id and ji.jev_id = jd.jev_id and jd.crcoa_name like '%Receivable%'";
		
		return jdbcTemplate.query(sql, new RowMapper<financials_ar_listModel>() {
			public financials_ar_listModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_ar_listModel h3h3 = new financials_ar_listModel();
				h3h3.setAr_id(rs.getInt("ar_id"));
				h3h3.setJev_date(rs.getString("jev_date"));
				h3h3.setJev_no(rs.getString("jev_no"));
				h3h3.setCrcoa_name(rs.getString("crcoa_name"));
				h3h3.setJevd_cramt(rs.getString("jevd_cramt"));
				h3h3.setJevd_expl(rs.getString("jevd_expl"));
				h3h3.setAr_status(rs.getString("ar_status"));
				return h3h3;
			}
		});
	}
}
