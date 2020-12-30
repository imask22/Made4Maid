package dao;
import java.sql.*;
import java.util.*;
import dbcon.DatabaseConnection;
import dto.job;
public class jobDao extends job {
	
	ResultSet rs;
	PreparedStatement pst;
	Connection con;
	
	public ArrayList<job> getDescbySubcatId(int subcatid)
	{
		ArrayList<job> lst = new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from job where subcatid = ?");
			pst.setInt(1, subcatid);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					job j = new job();
					j.setJobdesc(rs.getString(2));
					j.setSubcatid(rs.getInt(1));
					lst.add(j);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}

	public boolean addJobs(int subcatID,String job)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("insert into job values(?,?)");
			pst.setInt(1, subcatID);
			pst.setString(2, job);
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
	
}
