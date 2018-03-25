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
	
	public List<financials_cjevModel> getList() {

		sql = "select * from tbl_fs_jevp as P,tbl_fs_jevae as E,tbl_fs_jevsd as S,tbl_genstat as G" +
				"where P.jevp_id = E.jevp_id, E.jevp_id = SD_jevp_id, P.gs_id = G.gs_id";
		
		return jdbcTemplate.query(sql, new RowMapper<financials_cjevModel>() {
			public financials_cjevModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_cjevModel cjev = new financials_cjevModel();
				cjev.setJevp_uid(rs.getString("jevp_id"));
				cjev.setJevp_no(rs.getString("jevp_no"));
				cjev.setJevp_Date(rs.getString("jevp_date"));
				cjev.setJevp_transtype(rs.getString("jevp_transtype"));
				cjev.setRespCenter(rs.getString("resp_center_uid"));
				cjev.setJevp_particular(rs.getString("jevp_particular"));
				cjev.setUi_ID(rs.getString("ui_id"));
				cjev.setJevp_Remarks(rs.getString("jevp_remarks"));
				cjev.setGs_ids(rs.getString("gs_id"));
				cjev.setJevae_id(rs.getString("jevae_id"));
				cjev.setJevae_desc(rs.getString("jevae_desc"));
				cjev.setDb_amount(rs.getString("db_amount"));
				cjev.setCr_amount(rs.getString("cr_amount"));
				cjev.setJevsd_id(rs.getString("jevsd_id"));
				cjev.setJevsd_type(rs.getString("jevsd_type"));
				cjev.setJevsd_value(rs.getString("jevsd_value"));
				cjev.setJevsd_date(rs.getString("jevsd_date"));
				return cjev;
			}
		});
	}

	
	
	
}
