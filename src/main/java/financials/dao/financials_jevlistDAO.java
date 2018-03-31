package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.financials_jevlistModel;

public class financials_jevlistDAO {
	
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;
	public financials_jevlistDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
public boolean insert (financials_jevlistModel jl)	{
	return true;
}

public List<financials_jevlistModel> getJev_info() {
	
	sql = "select jev_no,jev_date,jev_creator,jev_remarks,tstat_name from tbl_fs_jev_info as ji \r\n" +	
		  "order by jev_id";
	
	return jdbcTemplate.query(sql, new RowMapper<financials_jevlistModel>() {
		public financials_jevlistModel mapRow (ResultSet rs,int row) throws SQLException {
			financials_jevlistModel jl = new financials_jevlistModel();
			
			jl.setJev_id(rs.getInt("jev_id"));
			jl.setJev_date(rs.getString("jev_date"));
			jl.setJev_no(rs.getString("jev_no"));
			jl.setJev_creator(rs.getString("jev_creator"));
			jl.setJev_remarks(rs.getString("jev_remarks"));
			jl.setTstat_name(rs.getString("tsat_name"));
			
			return jl;
		}
	});
}
			
}
