package dto;

public class maidsubcategory {
	
	
	int id;
	String subCategoryName;
	int categoryID;
	
	public maidsubcategory() {
		// TODO Auto-generated constructor stub
	}
	
	public maidsubcategory(int id, String subCategoryName, int categoryID) {
		super();
		this.id = id;
		this.subCategoryName = subCategoryName;
		this.categoryID = categoryID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	
}

