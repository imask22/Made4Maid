package dto;

import com.mysql.jdbc.Blob;

public class maid {
	
String id;
String name;
String password;

String phone_no;
boolean blocked;
int categoryID;
int subCategoryID;
boolean verify;
boolean verify_maid;
String aadhar;
public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


int qcity;
int qsubcity;
String maid_pic;
String bill_pic;


public maid(){}


public maid(String id,String name, String password,String phone_no, boolean blocked, int categoryID, int subCategoryID, boolean verify,
		boolean verify_maid,int qcity,int qsubcity, String aadhar,String maid_pic,String bill_pic) {
	super();
	this.id = id;
	this.qcity=qcity;
	this.qsubcity=qsubcity;
	this.password = password;
	this.blocked = blocked;
	this.categoryID = categoryID;
	this.subCategoryID = subCategoryID;
	this.verify = verify;
	this.verify_maid = verify_maid;
	this.aadhar = aadhar;
	this.maid_pic = maid_pic;
	this.bill_pic=bill_pic;
	this.phone_no=phone_no;
	this.name=name;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public boolean getBlocked() {
	return blocked;
}
public void setBlocked(boolean blocked) {
	this.blocked = blocked;
}
public int getCategoryID() {
	return categoryID;
}
public void setCategoryID(int categoryID) {
	this.categoryID = categoryID;
}


public int getSubCategoryID() {
	return subCategoryID;
}




public void setSubCategoryID(int subCategoryID) {
	this.subCategoryID = subCategoryID;
}



public boolean isVerify() {
	return verify;
}

public void setVerify(boolean verify) {
	this.verify = verify;
}

public boolean isVerify_maid() {
	return verify_maid;
}
public void setVerify_maid(boolean verify_maid) {
	this.verify_maid = verify_maid;
}

public String getAadhar() {
	return aadhar;
}

public void setAadhar(String aadhar) {
	this.aadhar = aadhar;
}


public String getMaid_pic() {
	return maid_pic;
}


public String getBill_pic() {
	return bill_pic;
}


public void setMaid_pic(String maid_pic) {
	this.maid_pic = maid_pic;
}


public void setBill_pic(String bill_pic) {
	this.bill_pic = bill_pic;
}


public String getPhone_no() {
	return phone_no;
}


public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}


public int getQcity() {
	return qcity;
}


public int getQsubcity() {
	return qsubcity;
}


public void setQcity(int qcity) {
	this.qcity = qcity;
}


public void setQsubcity(int qsubcity) {
	this.qsubcity = qsubcity;
}







	

}
