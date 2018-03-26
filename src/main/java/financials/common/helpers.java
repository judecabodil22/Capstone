package financials.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.CodeNameModel;

public class helpers {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;
	
	public helpers(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	/**************************************************************************
	 * Listing
	 **************************************************************************/
	public List<CodeNameModel> listFund() {
		String sql = "Select * from " + constants.TBL_FS_FUND;
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("fund_code"));
				model.setName(rs.getString("fund_description"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listTransType() {
		String sql = "Select * from " + constants.TBL_FS_TRANSACTYPE;
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("trans_code"));
				model.setName(rs.getString("trans_description"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listTemp() {
		String sql = "Select * from " + constants.TBL_FS_TEMPHEADER;
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("tmp_header_uid"));
				model.setName(rs.getString("tmp_header_particular"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listResp() {
		String sql = "Select * from " + constants.TBL_FS_RESPCENTER;
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("resp_center_no"));
				model.setName(rs.getString("resp_center_name"));
				return model;
			}
		});
	}
	
	public String getName(Object code, String table) {
		StringBuilder sql = new StringBuilder("Select ");
		if(constants.TBL_FS_FUND.equals(table)){
			sql.append(" fund_description FROM " + table + " WHERE fund_code=?");
		}
		else if(constants.TBL_FS_TRANSACTYPE.equals(table)){
			sql.append(" trans_description FROM " + table + " WHERE trans_code=?");
		}
		else if(constants.TBL_FS_TEMPHEADER.equals(table)){
			sql.append(" tmp_header_particular FROM " + table + " WHERE tmp_header_uid=?");
		}
		else if(constants.TBL_FS_RESPCENTER.equals(table)){
			sql.append(" resp_center_name FROM " + table + " WHERE resp_center_no=?");
		}
		return jdbcTemplate.queryForObject(sql.toString(), new Object[] { code }, String.class);
	}
}
