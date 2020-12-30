package dto;

public class time {
	
	String maidtime;
	int subcat;
	public String getMaidtime() {
		return maidtime;
	}
	
		
	
	public time(String maidtime, int subcat) {
		this.maidtime = maidtime;
		this.subcat = subcat;
	}



	public int getSubcat() {
		return subcat;
	}



	public void setMaidtime(String maidtime) {
		this.maidtime = maidtime;
	}



	public void setSubcat(int subcat) {
		this.subcat = subcat;
	}



	public time() {
	}
	
	
	
	
	

}
