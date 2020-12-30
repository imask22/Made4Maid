package dao;
import dto.customer;
import servercon.WebServer;
import dbcon.DatabaseConnection;
import java.sql.*;
import java.util.UUID;
import java.util.*;

public class customerDao extends customer {
	
	Connection con;
	ResultSet rs;
	PreparedStatement pst;
	public boolean registerCustomer(customer obj)
	{
		boolean b = false;
		try
		{
			String genpass = UUID.randomUUID().toString().substring(0,6);
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?)");
			pst.setString(1,obj.getId());
			pst.setString(2,obj.getPassword());
			pst.setString(3,obj.getFirstName());
			pst.setString(4,obj.getLastName());
			pst.setString(5,obj.getMobileNumber());
			pst.setBoolean(6, false);
			pst.setBoolean(7,false);
			pst.setInt(8, 0);
			int count = pst.executeUpdate();
                        
			String verification_link = WebServer.MYSERVER+
                    "/verifyuser.jsp?custid="+obj.getId();
			
			 boolean mailSent = MailDAO.sendMail(obj.getId(), 
					 "Verification Mail From made4maid", "Please click on following link "
					         + "to verify yourself with made4maid <a href="+verification_link+
					 ">VERIFY</a>");
			
			 if(mailSent)
			 {
				 System.out.println("hogya");
			 }
			 else
			 {
				 System.out.println("System error occured");
			 }
			
			if(count>0)
			{
				b=true;
				
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return  b;
		
	}
	
	public boolean checkID(String id)
	{
		boolean b = false;
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from customer where id = ?");
		
		pst.setString(1, id);
		
		rs = pst.executeQuery();
		if(rs.isBeforeFirst())
		{
			b=true;
//                        return b;
		
		}
		else
		{
			b=false;
//                        return b;
		}
		
		}
		catch(Exception ex)
		{
			
		}
                System.out.println(b);
		return b;
		
		
	}
	public boolean verifyuser(String id)
	{
		boolean b = false;
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("update customer set verified = ? where id = ?");
		pst.setBoolean(1, true);
		pst.setString(2, id);
		
		int count = pst.executeUpdate();
		if(count>0)
		{
			b=true;
		
		}
		else
		{
			b=false;
		}
		con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
		
		
	}
	
	public boolean logIn(String id,String password)
	{
		boolean b = false;
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from customer where id = ? and password = ? and verified = ? and blocked = ?");
		
		pst.setString(1, id);
		pst.setString(2, password);
		pst.setBoolean(3, true);
		pst.setBoolean(4, false);
		
		
		rs = pst.executeQuery();
		if(rs.isBeforeFirst())
		{
			b=true;
		}
		else
		{
			b=false;
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
		boolean b = false;
		boolean chk=false;
		try
		{
		con = DatabaseConnection.getConnection();
		chk=checkID(id);
		String genpass = UUID.randomUUID().toString().substring(0,6);
		if(chk)
		{
			pst = con.prepareStatement("update customer set password = ? where id = ?");
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
	
	public boolean modifySetPassword(String id,String Newpass)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			
			pst = con.prepareStatement("update customer set password = ? where id = ?");
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
	public ArrayList<customer> showallcustomers()
	{
		ArrayList<customer> lst = new ArrayList<customer>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from customer where verified = ? and blocked = ?");
			pst.setBoolean(1, true);
			pst.setBoolean(2, false);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
				customer cust = new customer();
				cust.setId((rs.getString(1)));
				cust.setFirstName(rs.getString(3));
				cust.setLastName(rs.getString(4));
				cust.setMobileNumber(rs.getString(5));
				cust.setBlocked(rs.getBoolean(7));
				lst.add(cust);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
		
		
	}
	
	public boolean modifyProfile(customer obj)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("update customer set firstName = ? , lastName = ? , mobileNumber=  ? where id = ?");
			pst.setString(1, obj.getFirstName());
			pst.setString(2, obj.getLastName());
			pst.setString(3, obj.getMobileNumber());
			pst.setString(4, obj.getId());
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
	public customer showParticularCustomer(String id)
	{
		customer cust = new customer();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from customer where id = ?");
			pst.setString(1, id);
			rs= pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				cust.setId(rs.getString(1));
				cust.setFirstName(rs.getString(3));
				cust.setLastName(rs.getString(4));
				cust.setMobileNumber(rs.getString(5));
				System.out.println(rs.getString(5));
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return cust;
	}
	
	
	public boolean checkPassword(String id,String password)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from customer where id = ? and password = ?");
			pst.setString(1, id);
			pst.setString(2, password);
			rs=pst.executeQuery();
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
	public boolean blockCustomer(String custID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("UPDATE customer set blocked = ? where id = ?");
			pst.setBoolean(1, true);
			pst.setString(2, custID);
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
	
	public boolean DeleteCustomer(String custID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("delete from customer where id = ?");
			pst.setString(1, custID);
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
	
	
	

}
