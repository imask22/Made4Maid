package dao;
import java.io.*;
import dbcon.DatabaseConnection;

import java.sql.*;
import dto.maid;

import servercon.WebServer;

import java.util.ArrayList;
import java.util.UUID;

public class maidDao extends maid {
	
	ResultSet rs;
	Connection con;
	PreparedStatement pst;
	
	
        public boolean registerMaid(maid obj)
	{
		boolean b = false;
		
		try
		{
			
			
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("INSERT INTO maid VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, obj.getId());
			pst.setString(2, obj.getName());

			pst.setString(3, obj.getPassword());
			pst.setString(4, obj.getPhone_no());
			pst.setBoolean(5, false);
                        
			pst.setInt(6, obj.getCategoryID());
			pst.setInt(7, obj.getSubCategoryID());
			pst.setBoolean(8, false);
			pst.setBoolean(9, false); 
			
			pst.setInt(10, obj.getQcity());
			pst.setInt(11, obj.getQsubcity());
			pst.setString(12, obj.getAadhar());
                        
			pst.setString(13, obj.getBill_pic());
			pst.setString(14, obj.getMaid_pic());//,(int)(maid_pic.length()));
			
			
			
			int count=pst.executeUpdate();
			
			if(count>0)
			{
				boolean isMailSent=MailDAO.sendMail(obj.getId(), "You will Be Verified within 3 days", "you will be log in once verified");
				
				if(isMailSent)
				{
					b=true;
				}
				else
				{
					System.out.print("some mail error occuread");
				}
			}
			else
			{
				System.out.print("some query error occuread");
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	
	public maid getmaidinfobyID(String id)
	{
		maid m = new maid();
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from maid where verify_maid = ? and blocked = ? and  id = ?");
			pst.setBoolean(1, true);
			pst.setBoolean(2, false);
			pst.setString(3, id);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				m.setId(rs.getString(1));
				m.setName(rs.getString(2));
				m.setCategoryID(rs.getInt(6));
				m.setSubCategoryID(rs.getInt(7));
				m.setQcity(rs.getInt(10));
				m.setQsubcity(rs.getInt(11));
				m.setPhone_no(rs.getString(4));
				m.setMaid_pic(rs.getString(14));
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return m;
	}
	
	
	
	public boolean checkID(String id)
	{
		boolean b = false;
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from maid where id = ?");
		
		pst.setString(1, id);
		
		rs = pst.executeQuery();
		if(rs.isBeforeFirst())
		{
			b=true;
		
		}
		
		
		}
		catch(Exception ex)
		{
			
		}
		return b;
		
		
	}
	public boolean checkIDPass(String id,String pass)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where id = ? and password = ? and verify_maid = ?");
			
			pst.setString(1, id);
			pst.setString(2, pass);
                        pst.setBoolean(3, true);
		
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				b=true;
		
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
			
	}
	
	
	public boolean forgotPassword(String id)
	{
		boolean b = false;
		boolean chk=false;
		try
		{
		con = DatabaseConnection.getConnection();
		chk=checkID(id);
		String genpass = UUID.randomUUID().toString().substring(0,6);
		if(chk)
		{
			pst = con.prepareStatement("update maid set password = ? where id = ?");
			pst.setString(1, genpass);
			pst.setString(2, id);
			int count = pst.executeUpdate();
			if(count>0)
			{
			boolean isMailSent = MailDAO.sendMail(id, "Your new pass = "+genpass,"regards ask");
			if(isMailSent)
			{
				b=true;
			}
			else
			{
			b = false;
			}
			}
		}
		else
		{
			System.out.println("wrong id entered");
		}
		
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
		
	}
	//panel k andar se pass change krne ki ninja tech
	public boolean modifySetPassword(String id,String Newpass)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			
			pst = con.prepareStatement("update maid set password = ? where id = ?");
			pst.setString(1, Newpass);
			pst.setString(2, id);
			int count = pst.executeUpdate();
			if(count>0)
			{
				b = true;
			}
			else
			{
				System.out.print("some error occured");
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
		
		
	}
	public ArrayList<maid> newlyregistered()
	{
		ArrayList<maid> lst = new ArrayList<maid>();
		
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where verify_maid = ? and blocked = ?");
			pst.setBoolean(1, false);
			pst.setBoolean(2,false);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					maid m = new maid();
					
					m.setId(rs.getString(1));
					m.setName(rs.getString(2));
					m.setBlocked(rs.getBoolean(5));
					m.setPhone_no(rs.getString(4));
					m.setCategoryID(rs.getInt(6));
					m.setSubCategoryID(rs.getInt(7));
					m.setVerify(rs.getBoolean(8));
					m.setVerify_maid(rs.getBoolean(9));
					
					m.setQcity(rs.getInt(10));
					m.setQsubcity(rs.getInt(11));
					m.setAadhar(rs.getString(12));
					m.setBill_pic(rs.getString(13));
					m.setMaid_pic(rs.getString(14));
					lst.add(m);
				}
			}
			
			return lst;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return lst;
	
	}
	public ArrayList<maid> showallmaid()
	{
		ArrayList<maid> lst = new ArrayList<maid>();
		
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where verify_maid = ?");
			pst.setBoolean(1, true);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					maid m = new maid();
					m.setId(rs.getString(1));
					m.setName(rs.getString(2));
					m.setBlocked(rs.getBoolean(5));
					m.setPhone_no(rs.getString(4));
					m.setCategoryID(rs.getInt(6));
					m.setSubCategoryID(rs.getInt(7));
					m.setVerify(rs.getBoolean(8));
					m.setVerify_maid(rs.getBoolean(9));
					
					m.setQcity(rs.getInt(10));
					m.setQsubcity(rs.getInt(11));
					m.setAadhar(rs.getString(12));
					m.setBill_pic(rs.getString(13));
					m.setMaid_pic(rs.getString(14));
					lst.add(m);
				}
			}
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	
	
	public boolean verify_maid1(String id)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			boolean rate = setInitialRating(id);
			pst = con.prepareStatement("update maid set verify_maid = ? where id = ?");
			pst.setBoolean(1, true);
			pst.setString(2, id);
			
			int count = pst.executeUpdate();
			
			if(count>0 && rate==true)
			{
				String siteadd = WebServer.MYSERVER+"/maid_login.jsp";
				boolean isMailSent=MailDAO.sendMail(id, "Verified by Made4Maid","Your Verification is sucessful You can now login to Your ID and start Exploring!!!<br>"+"<a href="+siteadd+">click to login</a>");
				
				b = true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	public boolean delverify_maid1(String id)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("delete from maid where id = ?");
			pst.setString(1, id);
			
			int count=pst.executeUpdate();
			
			if(count>0)
			{
				b = true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	public ArrayList<maid> getShowmaid()
	{
		ArrayList<maid> lst = new ArrayList<>();
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from maid where verify_maid = ?");
			pst.setBoolean(1, true);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					maid obj = new maid();
					obj.setId(rs.getString(1));
					obj.setName(rs.getString(2));
					obj.setCategoryID(rs.getInt(6));
					obj.setSubCategoryID(rs.getInt(7));
					obj.setQcity(rs.getInt(10));
					obj.setQsubcity(rs.getInt(11));
					obj.setMaid_pic(rs.getString(13));
					lst.add(obj);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	
	public String getPhoneNo(String id)
	{
		String phone="";
		try {
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from maid where id = ?");
			pst.setString(1, id);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				phone=rs.getString(4);
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return phone;
	}
	
	public boolean blockMaid(String maidID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("UPDATE maid set blocked = ? where id = ?");
			pst.setBoolean(1, true);
			pst.setString(2, maidID);
			int count = pst.executeUpdate();
			if(count>0)
			{
				
				b = true;
				
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
		
	}
	
	public boolean modify_maidProfile(maid obj)
	{
		boolean b= false;
		
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("UPDATE maid set name = ?,phone_no = ?,categoryID = ?,subCategoryID = ?,qcity = ?,qsubcity = ? where id = ?");
			pst.setString(1, obj.getName());
			pst.setString(2, obj.getPhone_no());
			pst.setInt(3, obj.getCategoryID());
			pst.setInt(4, obj.getSubCategoryID());
			pst.setInt(5, obj.getQcity());
			pst.setInt(6, obj.getQsubcity());
			pst.setString(7, obj.getId());
			
			int count=pst.executeUpdate();
			
			if(count>0)
			{
				//System.out.println("hogyi call");
				b=true;
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		
		return b;
	}
	
	public boolean DeleteMaid(String maidID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("delete from maid where id = ?");
			pst.setString(1, maidID);
			int count = pst.executeUpdate();
			if(count>0)
			{
				b=true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	public boolean setInitialRating(String id)
	{
		boolean b = false;
		try
		{
			pst = con.prepareStatement("Insert into ratings values(?,?,?,?)");
			pst.setString(1, id);
			pst.setString(2, "default");
			pst.setInt(3, 3);
			pst.setString(4, "adminRating");
			int count1=pst.executeUpdate();
			if(count1>0)
			{
				b=true;
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	

}
