package dao;
import java.sql.*;
import dto.*;
import dbcon.DatabaseConnection;
//import java.util.*;
import dto.*;
public class ratingsDao extends ratings {
	Connection con ;
	ResultSet rs;
	PreparedStatement pst;
        int cn=0;
        
    public boolean InsertRating(ratings obj)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("Insert into ratings values(?,?,?,?)");
			
			pst.setString(1, obj.getMaidID());
			pst.setString(2, obj.getReview());
			pst.setInt(3, obj.getRating());
			pst.setString(4, obj.getCustID());
                        
			
//                        System.out.println( pst.executeUpdate());
			int cn = pst.executeUpdate();
                        
            System.out.println("count="+cn);
			if(cn>0)
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
	public boolean SetRatings(ratings obj)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("update ratings set review = ? , rating = ? where (maidID = ? and custID = ?)");
			
			pst.setString(3, obj.getMaidID());
			pst.setString(1, obj.getReview());
			pst.setInt(2, obj.getRating());
			pst.setString(4, obj.getCustID());
                        
			
//                        System.out.println( pst.executeUpdate());
			int cn = pst.executeUpdate();
                        
              System.out.println("count="+cn);
			if(cn>0)
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
	
	public int getRatings(String maidID)
	{
		int rating = 0;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select rating from ratings where maidID = ? order by rating DESC");
			pst.setString(1, maidID);
			rs = pst.executeQuery();
			int sum1 = 0;
			int count=0;
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					sum1+=rs.getInt(1);
					count++;
					
				}
			}
			rating = sum1/count;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return rating;
	}
	
	public boolean chechAlreadyRated(String maidID,String custID)
	{
		boolean b=false;
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from ratings where maidID=? and custID = ?");
			pst.setString(1, maidID);
			pst.setString(2, custID);
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
	public ratings getCustMaidRating_Info(String maidID,String custID)
	{
		ratings obj = new ratings();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from ratings where custID = ? and maidID = ?");
			pst.setString(1, custID);
			pst.setString(2, maidID);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				obj.setMaidID(rs.getString(1));
				obj.setReview(rs.getString(2));
				obj.setRating(rs.getInt(3));
				obj.setCustID(rs.getString(4));
				
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return obj;
	}
	
	

}
