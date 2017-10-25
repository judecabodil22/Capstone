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
		String sql = "Select * from tbl_fs_fund";
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("fund_code"));
				model.setName(rs.getString("fund_name"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listTransType() {
		String sql = "Select * from tbl_fs_transactype";
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("transt_code"));
				model.setName(rs.getString("transt_name"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listTemp() {
		String sql = "Select * from tbl_fs_tempheader";
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("temph_code"));
				model.setName(rs.getString("temph_desc"));
				return model;
			}
		});
	}
	
	public List<CodeNameModel> listResp() {
		String sql = "Select * from tbl_fs_respcenter";
		return jdbcTemplate.query(sql, new RowMapper<CodeNameModel>() {
			public CodeNameModel mapRow(ResultSet rs, int row) throws SQLException {
				CodeNameModel model = new CodeNameModel();
				model.setCode(rs.getObject("rc_code"));
				model.setName(rs.getString("rc_name"));
				return model;
			}
		});
	}
	
	public String getName(Object code, String table) {
		StringBuilder sql = new StringBuilder("Select ");
		if(constants.TBL_FS_FUND.equals(table)){
			sql.append(" fund_name FROM " + table + " WHERE fund_code=?");
		}
		else if(constants.TBL_FS_TRANSACTYPE.equals(table)){
			sql.append(" transt_name FROM " + table + " WHERE transt_code=?");
		}
		else if(constants.TBL_FS_TEMPHEADER.equals(table)){
			sql.append(" temph_desc FROM " + table + " WHERE temph_code=?");
		}
		else if(constants.TBL_FS_RESPCENTER.equals(table)){
			sql.append(" rc_name FROM " + table + " WHERE rc_code=?");
		}
		return jdbcTemplate.queryForObject(sql.toString(), new Object[] { code }, String.class);
	}
}
