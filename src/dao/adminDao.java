package dao;


import dbcon.DatabaseConnection;
import java.sql.*;
import dto.admin;
import java.util.UUID;

public class adminDao extends admin {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	 
	public boolean login(admin obj)
	{
		boolean b=false;
		
		try
		{
		con=DatabaseConnection.getConnection();
		
		pst=con.prepareStatement("select * from admin where id = ? and password=?");
		
		pst.setString(1,obj.getId());
		pst.setString(2, obj.getPassword());
		
		rs=pst.executeQuery();
		
		if(rs.isBeforeFirst())
		{
			b=true;
		}
		con.close();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		;
		return b;
	}
	
	
	
	public boolean verifyID(String adId)
	{
		boolean b=false;
		
		try
		{
		con=DatabaseConnection.getConnection();
		
		pst=con.prepareStatement("select * from admin where id = ?");
		
		pst.setString(1, adId);
		
		rs=pst.executeQuery();
		
		if(rs.isBeforeFirst())
		{
			b=true;	
		}
	
		
		con.close();
	

		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return b;		
	}
	
	public boolean forgotPassword(String id)
	{
		boolean b=false;
		
		try{
		//	Random rand = new Random(5);
			String genpass = UUID.randomUUID().toString().substring(0,6);
			
			pst=con.prepareStatement("update admin set password = ? where id = ?");
			
			pst.setString(1, genpass);
			pst.setString(2,id);
			
			int count1= pst.executeUpdate();
			
			if(count1>0)
			{
				boolean isMailSent = MailDAO.sendMail(id, "this is mail", "this is your pass = "+genpass);
				if(isMailSent)
				{
					b=true;
					System.out.print("mail sent to = "+id);
					
				}
				else
				{
					b=false;
					System.out.print("not sent");
				}
				
			}
			else
			{
				
				System.out.println("some error occuread");
				return false;
			}
			return b;
			
		}
	
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return b;
		
	}
	
	
	public boolean checkPassword(String id ,String upass)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select id from admin where password = ? and id = ?");
			
			pst.setString(1, upass);
			
			pst.setString(2, id);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				
				b=true;
			}
				
			con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return b;
	}
	
	public boolean changePassword(String id ,String upass)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("update admin set password = ? where id = ?");
			
			pst.setString(1, upass);
			
			pst.setString(2, id);
			int count=pst.executeUpdate();
			if(count>0)
			{
				
				b=true;
			}
				
			con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return b;
	}
	
	

}
