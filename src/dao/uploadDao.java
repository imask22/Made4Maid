package dao;
import java.io.FileInputStream;
import dto.maidimg;
import java.util.*;

import java.sql.*;
import dbcon.DatabaseConnection;

public class uploadDao {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	 
	public boolean Uploadpic(String id,String bill_pic,String maid_pic)
	{
		boolean b = false;
		try
		{
			
			
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("insert into maid(bill_pic,maid_pic) values(?,?) where id = ?");
			
			
			//pst.setBlob(2, maid_pic);
			
			pst.setString(1, id);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
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
	public ArrayList<maidimg> show_allimg()
	{
		ArrayList<maidimg> lst = new ArrayList<maidimg>();
		try
		{
			
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where verify_maid = ? and blocked = ?");
			pst.setBoolean(1, true);
			pst.setBoolean(2, false);
			
		    rs = pst.executeQuery();
		    if(rs.isBeforeFirst())
		    {
		    	while(rs.next())
		    	{
		    		maidimg img = new maidimg();
		    		img.setId(rs.getString(1));
		    		img.setPic(rs.getBlob("maid_pic"));
		    		lst.add(img);
		    		
		    	}
		    }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return lst;
	}
	
	public ArrayList<String> getallmaidid()
	{
		ArrayList<String> asr = new ArrayList<String>();
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from maid where verify_maid = ? and blocked = ?");
		
		pst.setBoolean(1, true);
		pst.setBoolean(2, false);
		
		
		
		rs = pst.executeQuery();
		if(rs.isBeforeFirst())
		{
			while(rs.next())
			{
				asr.add(rs.getString(1));
			}
		}
		con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return asr;
		
		
	}
	public ArrayList<maidimg> show_allimgnotverify()
	{
		ArrayList<maidimg> lst = new ArrayList<maidimg>();
		try
		{
			
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where verify_maid = ? and blocked = ?");
			pst.setBoolean(1, false);
			pst.setBoolean(2, false);
			
		    rs = pst.executeQuery();
		    if(rs.isBeforeFirst())
		    {
		    	while(rs.next())
		    	{
		    		maidimg img = new maidimg();
		    		img.setId(rs.getString(1));
		    		img.setPic(rs.getBlob("maid_pic"));
		    		lst.add(img);
		    		
		    	}
		    }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return lst;
	}
	public ArrayList<maidimg> show_allbillimgnotverify()
	{
		ArrayList<maidimg> lst = new ArrayList<maidimg>();
		try
		{
			
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from maid where verify_maid = ? and blocked = ?");
			pst.setBoolean(1, false);
			pst.setBoolean(2, false);
			
		    rs = pst.executeQuery();
		    if(rs.isBeforeFirst())
		    {
		    	while(rs.next())
		    	{
		    		maidimg img = new maidimg();
		    		img.setId(rs.getString(1));
		    		img.setPic(rs.getBlob("bill_pic"));
		    		lst.add(img);
		    		
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
