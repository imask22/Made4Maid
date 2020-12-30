<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "dao.maidDao" %>
    <%@page import = "dto.maid" %>
    <%@page import = "java.sql.*" %>
    <%@page import=  "dao.timeDao" %>
    <%@page import=  "java.util.*" %>
    <%@page import="java.io.File"%>

  	<%@page import="org.apache.commons.fileupload.FileItem"%>
	<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
	<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
	<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
	<%@page import="java.util.List" %>
<%

String id="";
String name="";
String password="";
String phone_no="";
int catid=0;
int subcatid =0;
String aadhar="";
int qcity=0;
int qsubcity = 0;
String bill_pic = request.getParameter("bill_pic");
String maid_pic = request.getParameter("maid_pic");

String profilePicUrl_maid = "default1";
String profilePicUrl_bill = "default2";
int count=0;

//if(ServletFileUpload.isMultipartContent(request))
//{
	
	String path = application.getRealPath("/images");
	
	
	try
	{
	String maidid = id;
	
	FileItemFactory fif = new DiskFileItemFactory();
	
	ServletFileUpload sfu = new ServletFileUpload(fif);
	
	List<FileItem> items = sfu.parseRequest(request);
	
	for(FileItem item : items)
	{
		//pic wali field hai ki nhi wo btara hai
		if(item.isFormField())
		{
			String fieldName = item.getFieldName();
			System.out.println(fieldName+"===========================");
			if(fieldName!=null && fieldName.equals("id"))
			{
				String v = item.getString();
				id = v;
				System.out.println(id+"===========================");
			}
			if(fieldName.equals("id"))
			{
				String v = item.getString();
				id = v;
			}
				
			
			if(fieldName.equals("name"))
			{
				name = item.getString();
			}
			if(fieldName.equals("password"))
			{
				password = item.getString();
			}
			if(fieldName.equals("phone_no"))
			{
				phone_no = item.getString();
			}
			if(fieldName.equals("categoryID"))
			{
				catid = Integer.parseInt(item.getString());
			}
			if(fieldName.equals("subCategoryID"))
			{
				subcatid = Integer.parseInt(item.getString());
			}
			if(fieldName.equals("aadhar"))
			{
				aadhar = item.getString();
			}
			if(fieldName.equals("qcity"))
			{
				qcity = Integer.parseInt(item.getString());
			}
			if(fieldName.equals("qsubcity"))
			{
				qsubcity = Integer.parseInt(item.getString());
			}
			
			System.out.println("gotchha");
		}
		else
		{
			String profilePicUrl="";
			profilePicUrl = "";
			profilePicUrl = item.getName();
			//dot k baad harkuch
			
				if(count==0)
				{
				profilePicUrl = "";
				profilePicUrl = item.getName();
				//dot k baad harkuch
				profilePicUrl = profilePicUrl.substring(profilePicUrl.lastIndexOf("."));
				
				//converted to string
				profilePicUrl = id+"bill"+profilePicUrl;
				File tempFile = new File(path,profilePicUrl);
				System.out.println(tempFile.getAbsolutePath());
				item.write(tempFile);
				profilePicUrl_maid=profilePicUrl;
				count++;
				}
				else if(count==1)
				{
					profilePicUrl = "";
					profilePicUrl = item.getName();
					//dot k baad harkuch
					profilePicUrl = profilePicUrl.substring(profilePicUrl.lastIndexOf("."));
					
					//converted to string
					profilePicUrl = id+"maid"+profilePicUrl;
					File tempFile = new File(path,profilePicUrl);
					System.out.println(tempFile.getAbsolutePath());
					item.write(tempFile);
					profilePicUrl_bill=profilePicUrl;
					count++;
				}
			
		}
	}
	
	maidDao md = new maidDao();
	
	//md.updateProfilePic(maidid, profilePicUrl_maid,profilePicUrl_bill);
	
	
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}



ArrayList<String> lst = new ArrayList<String>();




maid obj = new maid(id,name,password,phone_no,false,catid,subcatid,false,false,qcity,qsubcity,aadhar,profilePicUrl_bill,profilePicUrl_maid);
maidDao u = new maidDao();

boolean b = u.registerMaid(obj);

timeDao td = new timeDao();

for(String k:lst)
{
	if(k!=null)
	{
		td.inserttime(k, id, true);
	}
}

if(b)
{
	out.print("<h1>Your reg is successful</h1>");
	%>
	<jsp:include page= "maid_login.jsp"/>
	<% 
}
else
{
	out.print("<h1>Error Your reg is notsuccessful</h1>");
	%>
	<jsp:include page= "maid_signup.jsp"/>
	<% 
}





%>

