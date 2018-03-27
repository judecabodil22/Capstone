package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.TVoucherModel;
import financials.model.financials_cjevModel;

public class financials_cjevDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;

	public financials_cjevDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean submit(financials_cjevModel cjv1) {
		
		//JEV INFO (PART I)
		String sql = "insert into tbl_fs_jev_info(jev_date,jev_trans_type,tot_db,tot_cr,jev_remarks,tstat_name) + values(getdate(),?,?,?,?,Pending)";

		jdbcTemplate.update(sql, new Object[] { cjv1.getJev_id(), cjv1.getJev_no(), cjv1.getJev_date(), cjv1.getJev_trans_type(),
												cjv1.getTot_dbamt(), cjv1.getTot_cramt(), cjv1.getJev_remarks (), cjv1.getTstat_name()
											  }
		);
	
		//JEV INFO (PART II)
		String sql1 = "insert into tbl_fs_jev_details(resp_name,dbcoa_name,jevd_dbamt,crcoa_name,jevd_cramt,jevd_expl,jev_id) + values(?,?,?,?,?,?,?)";

		jdbcTemplate.update(sql1, new Object[] { cjv1.getJevd_id(), cjv1.getResp_name(), cjv1.getDbcoa_name(), cjv1.getJevd_dbamt(),
												 cjv1.getCrcoa_name(), cjv1.getJevd_cramt(), cjv1.getJevd_expl (), cjv1.getJev_id()
											   }
		);
				
		//JEV INFO (PART III)
		String sql2 = "insert into tbl_fs_jev_supporting_docu(jevsd_id,jevsd_type,jevsd_value,jevsd_date,jev_id) + values(?,?,?,?,?)";

		jdbcTemplate.update(sql2, new Object[] {  cjv1.getJevsd_id(), cjv1.getJevsd_type(), cjv1.getJevsd_value(),
												  cjv1.getJevsd_date(), cjv1.getJev_id()
											   }
		);
		
		return true;
		
	}
	public List<financials_cjevModel> respCenter() {

		sql = "select resp_center_description from tbl_responsibility_center";

		return jdbcTemplate.query(sql, new RowMapper<financials_cjevModel>() {
			public financials_cjevModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_cjevModel cjm = new financials_cjevModel();
				cjm.setResp_center_description(rs.getString("resp_center_description"));
				return cjm;
			}

		});
	}
	
	public List<financials_cjevModel> dropDownAccount() {

		sql = "Select coa_description from tbl_coa";

		return jdbcTemplate.query(sql, new RowMapper<financials_cjevModel>() {
			public financials_cjevModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_cjevModel cjm = new financials_cjevModel();
				cjm.setCoa_description(rs.getString("coa_description"));
				return cjm;
			}

		});
	}
	
}
