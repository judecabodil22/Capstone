package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.financials_disbursedlistModel;

public class financials_disbursedlistDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public financials_disbursedlistDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<financials_disbursedlistModel> getDisblist() {
		
		sql = "select dv_id,dv_no,dv_date,dv_mop,dv_payee,dv_address,dv_amount from tbl_fs_disb_voucher_info";
		
		return jdbcTemplate.query(sql, new RowMapper<financials_disbursedlistModel>() {
			public financials_disbursedlistModel mapRow(ResultSet rs, int row) throws SQLException {
				financials_disbursedlistModel fd = new financials_disbursedlistModel();
				fd.setDv_id(rs.getString("dv_id"));
				fd.setDv_no(rs.getString("dv_no"));
				fd.setDv_date(rs.getDate("dv_date"));
				fd.setDv_mop(rs.getString("dv_mop"));
				fd.setDv_payee(rs.getString("dv_payee"));
				fd.setDv_address(rs.getString("dv_address"));
				fd.setDv_amount(rs.getString("dv_amount"));
				return fd;
			}
		});
	}

}