<%@ page language="java" import="java.io.*" %>
<%!
	int count = 0;
	String dbPath;

	public void jspInit()
	{
		try{
			dbPath = this.getServletConfig().getServletContext().getRealPath("/WEB-INF/counter.db");
			FileInputStream fis = new FileInputStream(dbPath);
			DataInputStream dis = new DataInputStream(fis);
			count = dis.readInt();
			dis.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
%>

<html><body>
<% count++; %>
Welcome! You are visitor number
<%= count   %>
</body></html>

<%!
	public void jspDestroy()
	{
		try{
			FileOutputStream fos = new FileOutputStream(dbPath);
			DataOutputStream dos = new DataOutputStream(fos);
			dos.writeInt(count);
			dos.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
%>