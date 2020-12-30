package dto;

public class post_add {
	
	int id;
	String customerID;
	int categoryID;
	int subcategoryID;
	String job;
	int cityID;
	int subcityID;
	String prefferedtime;
	String postDesc;
	String postedDate="";
	Boolean status;
	Boolean visiblity;
	
	

	
	public post_add() {
	}
	
	
	public post_add(int id, String customerID, int categoryID, int subcategoryID, String job, int cityID, int subcityID,
			String prefferedtime, String postDesc, String postedDate, Boolean status, Boolean visiblity) {
		this.id = id;
		this.customerID = customerID;
		this.categoryID = categoryID;
		this.subcategoryID = subcategoryID;
		this.job = job;
		this.cityID = cityID;
		this.subcityID = subcityID;
		this.prefferedtime = prefferedtime;
		this.postDesc = postDesc;
		this.postedDate = postedDate;
		this.status=status;
		this.visiblity = visiblity;
	}
	public int getId() {
		return id;
	}
	public String getCustomerID() {
		return customerID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public int getSubcategoryID() {
		return subcategoryID;
	}
	public String getJob() {
		return job;
	}
	public int getCityID() {
		return cityID;
	}
	public int getSubcityID() {
		return subcityID;
	}
	public String getPrefferedtime() {
		return prefferedtime;
	}
	public String getPostDesc() {
		return postDesc;
	}
	public String getPostedDate() {
		return postedDate;
	}
	public Boolean getStatus() {
		return status;
	}
	public Boolean getVisiblity() {
		return visiblity;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public void setSubcategoryID(int subcategoryID) {
		this.subcategoryID = subcategoryID;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public void setSubcityID(int subcityID) {
		this.subcityID = subcityID;
	}
	public void setPrefferedtime(String prefferedtime) {
		this.prefferedtime = prefferedtime;
	}
	public void setPostDesc(String postDesc) {
		this.postDesc = postDesc;
	}
	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public void setVisiblity(Boolean visiblity) {
		this.visiblity = visiblity;
	}
	
	
	
	
	

}
