package dao;
import dbcon.DatabaseConnection;
import dto.subcity;
import javafx.scene.chart.PieChart.Data;

import java.sql.*;
import java.util.*;

public class subcityDao extends subcity {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs ;
	
	public ArrayList<subcity> getsubcitybycityid(int id)
	{
		ArrayList<subcity> lst = new ArrayList<subcity>();
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from subcity where cityid = ?");
		pst.setInt(1, id);
		rs = pst.executeQuery();
		if(rs.isBeforeFirst())
		{
			while(rs.next())
			{
				subcity obj = new subcity();
				
				obj.setId(rs.getInt(1));
				obj.setLocality(rs.getString(2));
				obj.setCityid(rs.getInt(3));	
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
