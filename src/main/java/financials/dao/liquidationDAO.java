package financials.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.web.servlet.ModelAndView;

import financials.model.DisbursementSampleModel;
import financials.model.liquidationModel;

public class liquidationDAO {
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";
	public String i;

	public liquidationDAO(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean submit(liquidationModel liqModel) {

		String sql = "Insert into trans_tbl_liquidation(serial_no, date, responsibility_center, particulars, amount, total)" + "VALUES(?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { liqModel.getSerial_no(), liqModel.getDate(), liqModel.getResponsibility_center(), liqModel.getParticulars(), liqModel.getAmount(), liqModel.getTotal() });

		return true;

	}
	
	public boolean reset(liquidationModel liqModel) {
		
		liqModel.setSerial_no(" ");
		liqModel.setDate(" ");
		liqModel.setResponsibility_center(" ");
		liqModel.setParticulars(" ");
		liqModel.setAmount(" ");
		liqModel.setTotal(" ");
		
		return true;
	}
	
}
