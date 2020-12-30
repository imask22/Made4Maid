package dao;
import dbcon.DatabaseConnection;
import java.sql.*;
import java.util.*;
import dto.maidcategory;
public class maidcategoryDao extends maidcategory {
	
	PreparedStatement pst;
	ResultSet rs;
	Connection con;
	
	public ArrayList<maidcategory> getCatID()
	{
		ArrayList<maidcategory> lst = new ArrayList();
		   try
		   {
			   con = DatabaseConnection.getConnection();
			   pst = con.prepareStatement("select * from maidcategory");
			   rs = pst.executeQuery();
			   if(rs.isBeforeFirst())
			   {
				   while(rs.next())
				   {
					   maidcategory obj = new maidcategory();
					   obj.setId(rs.getInt(1));
					   obj.setCategoryName(rs.getString(2));
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
	public String getcatnmbycatid(int id)
	{
		String ask="";
		try
		{
			
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maidcategory where id = ?");
			pst.setInt(1, id);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					ask=rs.getString(2);
					System.out.println(ask);
				}
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ask;
	}
	
	
	
	
	
	
	

}
