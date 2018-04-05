package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.DV_Model;
import financials.model.financials_ap_listModel;

public class DV_DAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;
	
	String sql = "";
	public String i;
	public DV_DAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<DV_Model> getAplist() {

		sql = "select ji.jev_id, ji.jev_date, ji.jev_no, jd.jevd_id, jd.crcoa_name, jd.jevd_cramt, jd.jevd_expl \r\n" +
			  "from tbl_fs_jev_info ji inner join tbl_fs_jev_details jd on ji.jev_id = jd.jev_id \r\n" +
		      "where jd.crcoa_name like '%Payable%' \r\n" +
	    	  "order by ji.jev_no";
		
		return jdbcTemplate.query(sql, new RowMapper<DV_Model>() {
			public DV_Model mapRow(ResultSet rs, int row) throws SQLException {
				DV_Model dd = new DV_Model();
				dd.setJev_id(rs.getString("jev_id"));
				dd.setJev_date(rs.getString("jev_date"));
				dd.setJev_no(rs.getString("jev_no"));
				dd.setJevd_id(rs.getString("jevd_id"));
				dd.setCrcoa_name(rs.getString("crcoa_name"));
				dd.setJevd_cramt(rs.getString("jevd_cramt"));
				dd.setJevd_expl(rs.getString("jevd_expl"));
				return dd;
			}

		});
	}
}