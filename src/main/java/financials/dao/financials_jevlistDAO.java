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
	
public List<financials_jevlistModel> getJev_info() {
	
	sql = "select * from tbl_fs_jev_info \r\n" +	
		  "order by jev_id";
	
	return jdbcTemplate.query(sql, new RowMapper<financials_jevlistModel>() {
		public financials_jevlistModel mapRow (ResultSet rs,int row) throws SQLException {
			financials_jevlistModel jl = new financials_jevlistModel();
			
			jl.setJev_id(rs.getInt("jev_id"));
			jl.setJev_date(rs.getDate("jev_date"));
			jl.setJev_no(rs.getString("jev_no"));
			jl.setJev_trans_type(rs.getString("jev_trans_type"));
			jl.setTot_db(rs.getString("tot_db"));
			jl.setTot_cr(rs.getString("tot_cr"));
			jl.setJev_creator(rs.getString("jev_creator"));
			jl.setJev_remarks(rs.getString("jev_remarks"));
			jl.setTstat_name(rs.getString("tstat_name"));
			jl.setJev_checker(rs.getString("jev_checker"));
			jl.setJev_checker_remarks(rs.getString("jev_checker_remarks"));
			
			return jl;
		}
	});
}

//DELETE FUNCTION
//public boolean delete(financials_jevlistModel user) {

//	sql = "Delete from tbl_fs_jev_info " + "WHERE jev_id = ?";
//	sql = "Delete from tbl_fs_jev_details " + "WHERE jev_id = ?";
//	sql = "Delete from tbl_fs_jev_supporting_docu" + "WHERE jev_id = ?";
//	jdbcTemplate.update(sql, new Object[] { user.getJev_id() });
//	return true;
	
//}
			
}