package dao;
import dbcon.DatabaseConnection;
import java.sql.*;
import java.util.*;
import dto.maidsubcategory;
public class subcategoryDao extends maidsubcategory {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	
	public ArrayList<maidsubcategory> getsubCatbyCatID(int id)
	{
		ArrayList<maidsubcategory> lst = new ArrayList<maidsubcategory>();
		
		
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maidsubcategory where categoryID = ?");
			pst.setInt(1, id);
			rs=pst.executeQuery();
			
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					maidsubcategory o = new maidsubcategory();
					o.setId(rs.getInt(1));
					o.setSubCategoryName(rs.getString(2));
					o.setCategoryID(rs.getInt(3));
					lst.add(o);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return lst;
		
	}
	public String getsubcatnmbycatid(int id)
	{
		String ask="";
		try
		{
			
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maidsubcategory where id = ?");
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
	
	public boolean addSubcategory(String subcatnm,int catid)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO maidsubcategory(subCategoryName,categoryID) values(?,?)");
			pst.setString(1, subcatnm);
			pst.setInt(2, catid);
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
