package financials.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.UserModel;
import financials.model.tblreportsModel;

public class tblreportsDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;

	public tblreportsDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<tblreportsModel> getDV() {

		sql = "Select dv_no, disbursement_purpose, mode_of_payment, institute_name, responsibility_center, amount, employee_no from dv_transaction";

		return jdbcTemplate.query(sql, new RowMapper<tblreportsModel>() {
			public tblreportsModel mapRow(ResultSet rs, int row) throws SQLException {
				tblreportsModel trm = new tblreportsModel();
				trm.setDv_no(rs.getString("dv_no"));
				trm.setPurpose_name(rs.getString("disbursement_purpose"));
				trm.setMode_of_payment(rs.getString("mode_of_payment"));
				trm.setInstitute_name(rs.getString("institute_name"));
				trm.setResponsibility_center(rs.getString("responsibility_center"));
				trm.setAmount(rs.getString("amount"));
				trm.setEmployee_no(rs.getString("employee_no"));
				return trm;
			}
		});
	}
}
