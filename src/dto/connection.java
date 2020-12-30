package dto;

public class connection {

	int postID;
	String maidID;
	String custID;
	String postedDate;
	public connection(int postID, String maidID, String custID, String postedDate) {
		super();
		this.postID = postID;
		this.maidID = maidID;
		this.custID = custID;
		this.postedDate = postedDate;
	}
	public connection() {}
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	public String getMaidID() {
		return maidID;
	}
	public void setMaidID(String maidID) {
		this.maidID = maidID;
	}
	public String getCustID() {
		return custID;
	}
	public void setCustID(String custID) {
		this.custID = custID;
	}
	public String getPostedDate() {
		return postedDate;
	}
	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}

	
}
