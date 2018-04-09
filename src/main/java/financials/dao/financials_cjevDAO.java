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
import financials.model.financials_cjevModel;

public class financials_cjevDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public int b;

	public financials_cjevDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
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
	
public boolean insertJevInfo(financials_cjevModel model) {

		
		
		sql = "Insert into tbl_fs_jev_info(jev_date,jev_trans_type,jev_creator,jev_remarks,tstat_name)" + "VALUES(?,?,?,?,?)";
		
		jdbcTemplate.update(sql, new Object[] {model.getJev_date(),model.getJev_trans_type(),model.getJev_creator(),model.getJev_remarks(),model.getTstat_name()});

		insertJevDetails(model);
		
		return true;

	}

public boolean insertJevDetails(financials_cjevModel model)
{
	selectJevId();
	
	int size = model.getResp_name().length;
	int i;
	for(i=0;i<size;i++)
	{
		sql = "Insert into tbl_fs_jev_details(resp_name,dbcoa_name,jevd_dbamt,crcoa_name,jevd_cramt,jevd_expl,jev_id)" + "VALUES(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {model.getResp_name()[i],model.getDbcoa_name()[i],model.getJevd_dbamt()[i],model.getCrcoa_name()[i],model.getJevd_cramt()[i],model.getJevd_expl()[i],b});	
	}
	
	insertSupportingDocuments(model);
	
	return true;
}

public boolean insertSupportingDocuments(financials_cjevModel model)
{
	int size = model.getJevsd_type().length;
	int i;
	for(i=0;i<size;i++)
	{
		sql = "Insert into tbl_fs_jev_supporting_docu(jevsd_type,jevsd_value,jevsd_date,jev_id)" + "VALUES(?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {model.getJevsd_type()[i],model.getJevsd_value()[i],model.getJevsd_date()[i],b});	
	}
	
	return true;
}

	
public List<financials_cjevModel> selectJevId() {

	sql = "set rowcount 1\r\n" + 
			"select * from tbl_fs_jev_info order by jev_id desc";

	return jdbcTemplate.query(sql, new RowMapper<financials_cjevModel>() {
		public financials_cjevModel mapRow(ResultSet rs, int row) throws SQLException {
			financials_cjevModel cjm = new financials_cjevModel();
		b =	cjm.setJev_id(rs.getInt("jev_id"));
			return cjm;
		}

	});
}
	
	
	
}
