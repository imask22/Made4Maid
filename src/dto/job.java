package dto;

public class job {
	
	int subcatid;
	String jobdesc;
	public int getSubcatid() {
		return subcatid;
	}
	public String getJobdesc() {
		return jobdesc;
	}
	public void setSubcatid(int subcatid) {
		this.subcatid = subcatid;
	}
	public void setJobdesc(String jobdesc) {
		this.jobdesc = jobdesc;
	}
	public job(int subcatid, String jobdesc) {
		this.subcatid = subcatid;
		this.jobdesc = jobdesc;
	}
	public job() {
	}
	
	

}
