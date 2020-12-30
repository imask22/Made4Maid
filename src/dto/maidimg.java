package dto;
import java.sql.*;

public class maidimg {
	
	public String id;
	public Blob pic;
	
	
	 public maidimg() {
		// TODO Auto-generated constructor stub
	}

    
	public maidimg(String id, Blob pic) {
		super();
		this.id = id;
		this.pic = pic;
	}


	public String getId() {
		return id;
	}


	public Blob getPic() {
		return pic;
	}


	public void setId(String id) {
		this.id = id;
	}


	public void setPic(Blob pic) {
		this.pic = pic;
	}
	 
	 
	 

}
