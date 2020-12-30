package dto;

public class subcity {
	
	public int id;
	public String locality;
	public int cityid;
	
	
	
	
	
	public subcity() {
	}

	public subcity(int id, String locality, int cityid) {
		this.id = id;
		this.locality = locality;
		this.cityid = cityid;
	}
	
	public int getId() {
		return id;
	}
	public String getLocality() {
		return locality;
	}
	public int getCityid() {
		return cityid;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	
	
	

}
