package financials.model;

public class financials_jevlistModel {
	
	private int jev_id;
	private String jev_date;
	private String jev_no;
	private String jev_creator;
	private String jev_remarks;
	private String tstat_name;
	
	public int getJev_id() {
		return jev_id;
	}
	
	public void setJev_id (int jev_id) {
		this.jev_id = jev_id;
	}
	
	public String getJev_date() {
		return jev_date;
	}
	
	public void setJev_date (String jev_date) {
		this.jev_date = jev_date;
	}
	
	public String getJev_no() {
		return jev_no;
	}
	
	public void setJev_no (String jev_no) {
		this.jev_no = jev_no;
	}
	
	public String getJev_creator() {
		return jev_creator;
	}
	
	public void setJev_creator (String jev_creator) {
		this.jev_creator = jev_creator;
	}
	
	public String getJev_remarks() {
		return jev_remarks;
	}
	
	public void setJev_remarks (String jev_remarks) {
		this.jev_remarks = jev_remarks;
	}
	
	public String getTstat_name() {
		return tstat_name;
	}
	
	public void setTstat_name (String tstat_name) {
		this.tstat_name = tstat_name;
	}

}