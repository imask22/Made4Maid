package dto;

public class maidcategory {
	
	int id;
	String categoryName;
	
	public maidcategory() {
		// TODO Auto-generated constructor stub
	}
	
	public maidcategory(int id, String categoryName) {
		
		this.id = id;
		this.categoryName = categoryName;
	}




	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	

}
