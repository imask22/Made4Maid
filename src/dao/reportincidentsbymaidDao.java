package dao;
import dbcon.DatabaseConnection;
import java.sql.*;
import dto.*;

import java.util.ArrayList;
import java.util.Date;
public class reportincidentsbymaidDao extends reportedincidentsbymaid {

	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	public boolean addIncidentbymaid(reportedincidentsbymaid obj)
	{
		boolean b=false;
		try
		{
			Date date = new Date();
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO reportedincidentsbymaid(incDesc,maidID,customerID,postID,postedDate) values(?,?,?,?,?)");
			pst.setString(1,obj.getIncDesc());
			pst.setString(2, obj.getMaidID());
			pst.setString(3, obj.getCustomerID());
			pst.setInt(4, obj.getPostID());
			Timestamp timestamp2 = new Timestamp(date.getTime());
			pst.setTimestamp(5, timestamp2);
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
	
	public ArrayList<reportedincidentsbymaid> getAllReportedIncidentsByMaid()
	{
		ArrayList<reportedincidentsbymaid> lst =new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from reportedincidentsbymaid");
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					reportedincidentsbymaid obj = new reportedincidentsbymaid();
					obj.setId(rs.getInt(1));
					obj.setIncDesc(rs.getString(2));
					obj.setPostedDate(rs.getString(5));
					obj.setMaidID(rs.getString(3));
					obj.setCustomerID(rs.getString(4));
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
