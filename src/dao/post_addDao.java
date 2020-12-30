package dao;
import java.sql.*;
import dto.*;
import java.util.*;
import dbcon.DatabaseConnection;
import dto.post_add;
import javafx.scene.chart.PieChart.Data;
import servercon.WebServer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.util.Date;
import java.util.*;

public class post_addDao extends post_add {
	
	ResultSet rs;
	PreparedStatement pst;
	Connection con;

	public boolean addPost(post_add obj)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO post_add(customerID,categoryID,subcategoryID,job,cityID,subcityID,prefferedtime,postDesc,postedDate,status,visibility) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, obj.getCustomerID());
			pst.setInt(2, obj.getCategoryID());
			pst.setInt(3, obj.getSubcategoryID());
			pst.setString(4, obj.getJob());
			pst.setInt(5, obj.getCityID());
			pst.setInt(6, obj.getSubcityID());
			pst.setString(7, obj.getPrefferedtime());
			pst.setString(8, obj.getPostDesc());
			Date date = new Date();
			Timestamp timestamp2 = new Timestamp(date.getTime());
			pst.setTimestamp(9, timestamp2);//;(9,timestamp2);
			pst.setBoolean(10,false);
			pst.setBoolean(11, true);
			
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
	//to check if connection alrady done
	public boolean AlradyConnected(String maidID,String custID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from connection where maidID = ? and custID = ?");
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
	
	
	
	public boolean addPostDirecttoMaid(String maidid,post_add obj,String custID)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO post_add(customerID,categoryID,subcategoryID,job,cityID,subcityID,prefferedtime,postDesc,postedDate,status,visibility) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, obj.getCustomerID());
			pst.setInt(2, obj.getCategoryID());
			pst.setInt(3, obj.getSubcategoryID());
			pst.setString(4, obj.getJob());
			pst.setInt(5, obj.getCityID());
			pst.setInt(6, obj.getSubcityID());
			pst.setString(7, obj.getPrefferedtime());
			pst.setString(8, obj.getPostDesc());
			Date date = new Date();
			Timestamp timestamp2 = new Timestamp(date.getTime());
			pst.setTimestamp(9, timestamp2);
			pst.setBoolean(10,true);
			pst.setBoolean(11, false);
			String Preparedetails="Require maid/worker for---";
			post_addDao pd = new post_addDao();
			int postid=pd.postid();
			maidcategoryDao md = new maidcategoryDao();
			subcategoryDao sub = new subcategoryDao();
			cityDao cd = new cityDao();
			//maid mes = new maid();
			PreparedStatement pst1 = con.prepareStatement("select * from maid where id = ?");
			pst1.setString(1,maidid);
			String place2="";
			ResultSet rs1 = pst1.executeQuery();
			System.out.print("yoyo");
			if(rs1.isBeforeFirst())
			{
				rs1.next();
				int subcity=rs1.getInt(11);
				
				int city = rs1.getInt(10);
				place2 = cd.getsubcityNamebyCityidAndSubcityid(city, subcity); 
				
			}
			String place1 = cd.getsubcityNamebyCityidAndSubcityid(obj.getCityID(), obj.getSubcityID());
			System.out.print(place1+" "+place2);
			String dist  = getPlace(place1,place2);
			
			
			
			String jobDetail=md.getcatnmbycatid(obj.getCategoryID())+"<br>"+dist+" kms"+"<br>"+sub.getsubcatnmbycatid(obj.getSubcategoryID())+obj.getJob()+"<br>"+obj.getPrefferedtime()+"<br>"+place1+"<br>"+cd.getcityNamebyCityid(obj.getCityID());
			String request_accepted = WebServer.MYSERVER+
                    "/oktocall.jsp?custID="+custID+"&maidID="+maidid+"&postID="+postid;
			String request_denied = WebServer.MYSERVER+
                    "/nocall.jsp?custID="+custID+"&maidID="+maidid+"&postID="+postid;
			
			int count=pst.executeUpdate();
			if(count>0)
			{
				boolean isMailSent=MailDAO.sendMail(maidid, "New work for you",Preparedetails+"<br>"+jobDetail+"<br>"+"<a href="+request_accepted+">Accept the Job<br>"+"<a href="+request_denied+">Reject Job</a>");
				if(isMailSent)
				{
					System.out.println("we are great");
					
				}
				b=true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	
	
	
	
	
	public ArrayList<post_add> getAdds()
	{
		ArrayList<post_add> u = new ArrayList<>();
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from post_add");
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					post_add obj = new post_add();
					obj.setId(rs.getInt(1));
					obj.setCustomerID(rs.getString(2));
					obj.setCategoryID(rs.getInt(3));
					obj.setSubcategoryID(rs.getInt(4));
					obj.setJob(rs.getString(5));
					obj.setCityID(rs.getInt(6));
					obj.setSubcityID(rs.getInt(7));
					obj.setPrefferedtime(rs.getString(8));
					obj.setPostDesc(rs.getString(9));
					u.add(obj);
					
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return u;
	}
	
	public boolean sendRequesttoCustomer(int post_id,String maidid)
	{
		boolean b = false;
		try
		{
			String custid="";
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from post_add where id = ?");
			pst.setInt(1, post_id);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				custid=rs.getString(2);
			}
			maidDao mad = new maidDao();
			String phone=mad.getPhoneNo(maidid);
			maid md = new maid();
			md=mad.getmaidinfobyID(maidid);
			String maidname=md.getName();
	
			
			
			String request_accepted = WebServer.MYSERVER+
                    "/accept_request.jsp?post_id="+post_id+"&maidid="+maidid;
			String request_denied = WebServer.MYSERVER+
                    "/denied_request.jsp?post_id="+post_id+"&maidid="+maidid;
			
			String message="kindly Contact me on number : "+phone+"<br> Do you want to accept the request <br>"
					+ "<a href="+request_accepted+">accept request</a><br><a href="+request_denied+">cancel request</a>";
			boolean isMailSent=MailDAO.sendMail(custid, "Request Accepted by "+maidname, message);
			if(isMailSent)
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
	
	public boolean setStatusandVisiblity(int post_id)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst=con.prepareStatement("update post_add set status = ? and visibility = ? where id = ?");
			pst.setBoolean(1,true);
			pst.setBoolean(2,false);
			pst.setInt(3,post_id);
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
		System.out.println(b);
		return b;
	}
	public boolean oktocall(String custID,String maidid,int post_id)
	{
		boolean b = false;
		try
		{
			maidDao md = new maidDao();
			String phone=md.getPhoneNo(maidid);
		    maid m = new maid();
			m=md.getmaidinfobyID(maidid);
			String nm=m.getName();
			String request_accepted = WebServer.MYSERVER+
                    "/accept_request.jsp?post_id="+post_id+"&maidid="+maidid;
			String request_denied = WebServer.MYSERVER+
                    "/denied_request.jsp?post_id="+post_id+"&maidid="+maidid;
			
			String message="kindly Contact me on number : "+phone+"<br> Do you want to accept the request <br>"
					+ "<a href="+request_accepted+">accept request</a><br><a href="+request_denied+">cancel request</a>";
			boolean isMailSent=MailDAO.sendMail(custID, "Request Accepted by "+nm, message);
			if(isMailSent)
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
	public boolean nocall(String custID,String maidid)
	{
		boolean b = false;
		try
		{
			maidDao md = new maidDao();
			String phone=md.getPhoneNo(maidid);
		    maid m = new maid();
			m=md.getmaidinfobyID(maidid);
			String nm=m.getName();
			
			
		boolean isMailSent=MailDAO.sendMail(custID, "Request rejected by maid "+nm, "post has been sent to all maids kindly wait for their reply");
		if(isMailSent)
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
	
	public int postid()
	{
		int count=-1;
		try
		{
			
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from post_add order by id Desc");
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				count=rs.getInt(1);
			}
			if(count==-1)
			{
				count=0;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ++count;
	}
	
	public boolean changeRejectedStatus(int post_id)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst=con.prepareStatement("Update post_add set status = ? and visibility=? where id = ?");
			pst.setBoolean(1, false);
			pst.setBoolean(2, true);
			pst.setInt(3, post_id);
			
			
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
	
	public boolean checkPresenceMaid(int postid,String maidid)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
	        pst=con.prepareStatement("select * from whydeny where id = ? and maidid=?");
	        pst.setInt(1, postid);
	        pst.setString(2, maidid);
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
	
	public boolean requestMatch(int postID,String maidID,String custID)
	{
		boolean b = false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("insert into connection values(?,?,?,?)");
			pst.setInt(1, postID);
			pst.setString(2, maidID);
			pst.setString(3, custID);
			Date date = new Date();
			Timestamp timestamp = new Timestamp(date.getTime());
			pst.setTimestamp(4, timestamp);
			int count = pst.executeUpdate();
			if(count>0)
			{
				b = true;
			}	
		}
		catch(Exception ex)
		{
			
			ex.printStackTrace();
			return b;
		}
		return b;
	}
	
	public ArrayList<connection> showMyConnection(String custID)
	{
		ArrayList<connection> lst = new ArrayList<>();
		try
		{
		con = DatabaseConnection.getConnection();
		pst = con.prepareStatement("select * from connection where custID = ?");
		pst.setString(1,custID);
		rs = pst.executeQuery();
		if(rs.isBeforeFirst());
		while(rs.next())
		{
			connection c = new connection();
			c.setPostID(rs.getInt(1));
			c.setMaidID(rs.getString(2));
			c.setCustID(rs.getString(3));
			c.setPostedDate(rs.getString(4));
			lst.add(c);
		}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
		
	}
	
	public ArrayList<connection> fetchMyConnection()
	{
		ArrayList<connection> lst = new ArrayList<>();
		try
		{
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from connection");
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					connection conn = new connection();
					conn.setPostID(rs.getInt(1));
					conn.setMaidID(rs.getString(2));
					conn.setPostedDate(rs.getString(3));
					conn.setCustID(rs.getString(4));
					lst.add(conn);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	
	public ArrayList<String> getparticularcustConnection(String custID)
	{
		ArrayList<String> lst = new ArrayList<>();
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select maidID from connection where custID=?");
			pst.setString(1, custID);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					lst.add(rs.getString(1));
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	
	public boolean Delete_post_byCustomer(String custID,String postID)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("delete from post_add where id = ? and customerID = ?");
			pst.setString(1, postID);
			pst.setString(2, custID);
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
	public ArrayList<post_add> GetcustPost(String custID)
	{
		ArrayList<post_add> lst = new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from post_add where customerID = ? and status = ? and visibility = ?");
			
			pst.setString(1,custID);
			pst.setBoolean(2, false);
			pst.setBoolean(3, true);
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					post_add pd = new post_add();
					pd.setId(rs.getInt(1));
					pd.setCategoryID(rs.getInt(3));
					pd.setSubcategoryID(rs.getInt(4));
					pd.setJob(rs.getString(5));
					pd.setCityID(rs.getInt(6));
					pd.setSubcityID(rs.getInt(7));
					pd.setPostedDate(rs.getString(8));
					pd.setPostDesc(rs.getString(9));
					lst.add(pd);
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
		
		
	}
	public String getPlace(String place1,String place2)
	{
		 final String GOOGLE_SEARCH_URL = "https://www.google.com/search";
			File obj = new File("ask3.txt");
			try
			{
				FileWriter write1 = new FileWriter("ask3.txt");
				FileReader fr = new FileReader(obj);
			//Taking search term input from console
			;
		
		
			
			System.out.println(place1);
			System.out.println(place2);
			
			
			String searchURL = GOOGLE_SEARCH_URL + "?q=distance between "+place1+" and "+place2+" in indore &num=1";
			//without proper User-Agent, we will get 403 error
			Document doc = Jsoup.connect(searchURL).userAgent("Firefox/76.0").get();
			
			//below will print HTML data, save it to a file and open in browser to compare
			//System.out.println(doc.body());
			write1.write(""+doc);
			write1.close();
			BufferedReader br = new BufferedReader(fr);
			String s,ask="";
			int count1=0;
			while((s=br.readLine())!=null)
			{
				String[] words,pqr=null;
				words=s.split(" ");
				int flag=0;
				for(String a : words)
				{
					//System.out.println(a);
					
				
					if(a.equals("class=\"s\">") || a.matches("class=\"UdvAnf\"><span"))
					{
						//System.out.println(s);
						count1=1;
					}
					if(count1==1)
					{
						
							ask+=a+" ";
							if(a.matches("class=\"UdvAnf\"><span"))
							{
								ask=s;
								flag=1;
								break;
							}
					}
					if(count1==1 && (a=="</div>"|| a.matches("(.*)</span>")))
					{
						flag=1;
						break;
					}
						
					
			}
				if(flag==1)
				{
					break;
				}
			}
			System.out.println(ask);
			Pattern p = Pattern.compile("[-+]?[0-9]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?" );
	        Matcher m = p.matcher(ask);
	        int countask=0;
	        String km="";
	        //int flag=0;
	        while(m.find()) {
	        	if(countask==0)
	        	{
	        		countask++;
	        		continue;
	        	}
	        	if(countask==1)
	        	{
	        		System.out.println(m.group()+" minutes");
	        		km=m.group();
	        		countask++;
	        	}
	        	else
	        	{
	        		System.out.println(m.group()+" kms");
	        		km = m.group();
	        	//	flag=1;
	        	}
	        	
	        	
	        }
	        
	        
	        return km;
		        
			
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return "Not Defined";
		}


		
	
	

}
