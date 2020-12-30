package dto;

public class reportincidentsbycustomer {
	
	int id;
	String incDesc;
	String postedDate;
	String maidID;
	String customerID;
	int postID;
	
	
	public reportincidentsbycustomer() {
		// TODO Auto-generated constructor stub
	}
	
	public reportincidentsbycustomer(int id, String incDesc, String postedDate, String maidID, String customerID,
			int postID) {
		
		this.id = id;
		this.incDesc = incDesc;
		this.postedDate = postedDate;
		this.maidID = maidID;
		this.customerID = customerID;
		this.postID = postID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIncDesc() {
		return incDesc;
	}
	public void setIncDesc(String incDesc) {
		this.incDesc = incDesc;
	}
	public String getPostedDate() {
		return postedDate;
	}
	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}
	public String getMaidID() {
		return maidID;
	}
	public void setMaidID(String maidID) {
		this.maidID = maidID;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	
	
	

}
