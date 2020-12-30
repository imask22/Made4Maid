package dao;
import java.util.*;


import dbcon.DatabaseConnection;
import java.sql.*;
import java.util.Date;


import dto.*;
public class reportincidentsbycustomerDao extends reportincidentsbycustomer {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	public boolean addIncidentbycustomer(reportincidentsbycustomer obj)
	{
		boolean b=false;
		try
		{
			Date date = new Date();
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO reportedincidentsbycustomer(incDesc,postedDate,maidID,customerID,postID) values(?,?,?,?,?)");
			pst.setString(1,obj.getIncDesc());
			Timestamp timestamp2 = new Timestamp(date.getTime());
			pst.setTimestamp(2, timestamp2);
			pst.setString(3, obj.getMaidID());
			pst.setString(4, obj.getCustomerID());
			pst.setInt(5, obj.getPostID());
			
			int count=pst.executeUpdate();
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
	
	public ArrayList<reportincidentsbycustomer> getAllReportedIncidentsByCustomer()
	{
		ArrayList<reportincidentsbycustomer> lst =new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from reportedincidentsbycustomer");
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					reportincidentsbycustomer obj = new reportincidentsbycustomer();
					obj.setId(rs.getInt(1));
					obj.setIncDesc(rs.getString(2));
					obj.setPostedDate(rs.getString(3));
					obj.setMaidID(rs.getString(4));
					obj.setCustomerID(rs.getString(5));
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
}