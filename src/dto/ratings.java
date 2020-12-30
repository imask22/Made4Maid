package dto;

public class ratings {
	
	String maidID;
	String review;
	int rating;
	String custID;
	public ratings(String maidID, String review, int rating,String custID) {
		super();
		this.maidID = maidID;
		this.review = review;
		this.rating = rating;
		this.custID= custID;
	}
	
	public ratings()
	{
		
	}

	public String getMaidID() {
		return maidID;
	}

	public void setMaidID(String maidID) {
		this.maidID = maidID;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getCustID() {
		return custID;
	}

	public void setCustID(String custID) {
		this.custID = custID;
	}
	
	
	

}
