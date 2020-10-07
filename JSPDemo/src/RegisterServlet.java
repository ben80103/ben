
import javax.servlet.*;
//import javax.servlet.http.*;
//import java.io.PrintWriter;
//import java.io.IOException;
import mvcdemo.bean.*;
import java.io.*;

import java.sql.*;
//import javax.rmi.*;
import javax.naming.*;
import javax.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private static final String CONTENT_TYPE = "text/html; charset=UTF-8";
	 private static final String CHARSET_CODE = "UTF-8";
	 public void init(ServletConfig config) throws ServletException
	 {
	   super.init(config);
	 }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    request.setCharacterEncoding(CHARSET_CODE);
	    response.setContentType(CONTENT_TYPE);

	    // To prevent caching 
	   response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
	   response.setHeader("Pragma","no-cache"); // HTTP 1.0
	   response.setDateHeader ("Expires", -1); // Prevents caching at the proxy server

	    
	   if (request.getParameter("submit")!=null)
	     gotoSubmitProcess(request, response);
	   else if (request.getParameter("confirm")!=null)
	     gotoConfirmProcess(request, response);
	}
	
	 public void gotoSubmitProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	  {
	    String name;
	    String birthyear, birthmonth, birthday;
	    String id;
	    String zipcode;
	    String address;
	    String phone;
	    String mailaddress;
	   
	    name = request.getParameter("name").trim();
	    birthyear = request.getParameter("birthyear").trim();
	    birthmonth = request.getParameter("birthmonth").trim();
	    birthday = request.getParameter("birthday").trim();
	    id = request.getParameter("id").trim();
	    zipcode = request.getParameter("zipcode").trim();
	    address = request.getParameter("address").trim();
	    phone = request.getParameter("phone").trim();
	    mailaddress = request.getParameter("mailaddress").trim();
	    StudentBean reg_student =  new StudentBean(name, birthyear, birthmonth, birthday, id, zipcode, address, phone, mailaddress);
	    request.getSession(true).setAttribute("reg_student",reg_student);
	    request.getRequestDispatcher("/DisplayStudent.jsp").forward(request,response);
	  }

	  public void gotoConfirmProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	  {

	    DataSource ds = null;
	    InitialContext ctxt = null;
	    Connection conn = null;
	    
	    try {
	     
	      //建立Context Object,連到JNDI Server
	      ctxt = new InitialContext();

	      //使用JNDI API找到DataSource
	      ds = ( DataSource ) ctxt.lookup("java:comp/env/jdbc/xe");
	     //ds = ( DataSource ) ctxt.lookup("jdbc/xe");
	      //向DataSource要Connection
	      conn = ds.getConnection();

	      //建立Database Access Object,負責Table的Access
	      StudentDAO studentDAO = new StudentDAO(conn);
	      StudentBean studentData = (StudentBean)request.getSession(true).getAttribute("reg_student");
	      if (studentDAO.insertStudent(studentData))
	        {
	          System.out.println("Get some SQL commands done!");
	          request.getSession(true).invalidate();
	          request.getRequestDispatcher("/Thanks.jsp").forward(request,response);
	        }
	    } catch (NamingException ne) {
	      System.out.println("Naming Service Lookup Exception");  
	    } catch (SQLException e) {
	      System.out.println("Database Connection Error"); 
	    } finally {
	      try {
	        if (conn != null) conn.close();
	      } catch (Exception e) {
	        System.out.println("Connection Pool Error!");
	      }
	    }
	           
	  }

}
