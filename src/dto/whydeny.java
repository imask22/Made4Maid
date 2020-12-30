package dto;

public class whydeny {
	
	int pid;
	String whyDesc;
	String maid;
	String custid;
	
	public whydeny()
	{
		
	}
	
	public String getMaid() {
		return maid;
	}

	public void setMaid(String maid) {
		this.maid = maid;
	}

	public String getCustid() {
		return custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public whydeny(int pid, String whyDesc, String maid, String custid) {
		super();
		this.pid = pid;
		this.whyDesc = whyDesc;
		this.maid = maid;
		this.custid = custid;
	}

	public whydeny(int pid, String whyDesc) {
		super();
		this.pid = pid;
		this.whyDesc = whyDesc;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getWhyDesc() {
		return whyDesc;
	}
	public void setWhyDesc(String whyDesc) {
		this.whyDesc = whyDesc;
	}
	
	

}
