package financials.dao;

import java.awt.Color;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import financials.model.DateModel;
import financials.model.UserModel;

public class DatDao
{
	public JdbcTemplate jdbcTemplate;
	public PlatformTransactionManager platformTransactionManager;
	public TransactionTemplate transactionTemplate;

	String sql = "";

	public DatDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	public boolean insert(DateModel date) {

		String sql = "Insert into Date(petsa)" + "VALUES(?)";

		jdbcTemplate.update(sql, new Object[] {date.getDate()});

		return true;
	
	
	}
	
	public List<Map<String,Object>> getSampleData() {
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();

		sql = "Select * from SampleTable";
		
		List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
		for (Map<String,Object> rs : rows) {
			Map<String,Object> sample = new HashMap<String, Object>();
			sample.put("name", rs.get("name"));
			sample.put("value", rs.get("value"));
			sample.put("color", rs.get("color"));
			sample.put("value2", rs.get("value2"));
	
			list.add(sample);
		}
		return list;
	}
	
	
	
	public List<DateModel> particular() {

		sql = "Select value from SampleTable where value= 23";

		return jdbcTemplate.query(sql, new RowMapper<DateModel>() {
			public DateModel mapRow(ResultSet rs, int row) throws SQLException {
				DateModel date = new DateModel();
				date.setValue(rs.getString("value"));
				return date;
			}

		});
	}
	
	

	
	
}
