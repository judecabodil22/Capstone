package financials.model;

public class financials_gledgerModel {
	
	//JEV Info (Part I)
	private int jev_id;
	private String jev_no;
	private String jev_date;
	private String tstat_name;
	private String jev_post_status;
	
	//JEV Details (Part II)
	private int jevd_id;
	private String dbcoa_name;
	private String jevd_dbamt;
	private String crcoa_name;
	private String jevd_cramt;
	
	public int getJev_id() {
		return jev_id;
	}
	public void setJev_id(int jev_id) {
		this.jev_id = jev_id;
	}
	public String getJev_no() {
		return jev_no;
	}
	public void setJev_no(String jev_no) {
		this.jev_no = jev_no;
	}
	public String getJev_date() {
		return jev_date;
	}
	public void setJev_date(String jev_date) {
		this.jev_date = jev_date;
	}
	public String getTstat_name() {
		return tstat_name;
	}
	public void setTstat_name(String tstat_name) {
		this.tstat_name = tstat_name;
	}
	public String getJev_post_status() {
		return jev_post_status;
	}
	public void setJev_post_status(String jev_post_status) {
		this.jev_post_status = jev_post_status;
	}
	public int getJevd_id() {
		return jevd_id;
	}
	public void setJevd_id(int jevd_id) {
		this.jevd_id = jevd_id;
	}
	public String getDbcoa_name() {
		return dbcoa_name;
	}
	public void setDbcoa_name(String dbcoa_name) {
		this.dbcoa_name = dbcoa_name;
	}
	public String getJevd_dbamt() {
		return jevd_dbamt;
	}
	public void setJevd_dbamt(String jevd_dbamt) {
		this.jevd_dbamt = jevd_dbamt;
	}
	public String getCrcoa_name() {
		return crcoa_name;
	}
	public void setCrcoa_name(String crcoa_name) {
		this.crcoa_name = crcoa_name;
	}
	public String getJevd_cramt() {
		return jevd_cramt;
	}
	public void setJevd_cramt(String jevd_cramt) {
		this.jevd_cramt = jevd_cramt;
	}
	
}
