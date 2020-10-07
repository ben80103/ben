<%--
	File: iterationTest.jsp
	This example shows the usage of writing iterative
	statements that spread across multiple scriptlets.
	Note the usage of the braces { and } to create blocks.
--%>



<%--
	The following declarations are for testing purpose
--%>
<%!
	//An example class
	class User{
		//Atributes
		String name;
		String email;

		//Constructor
		User(String n, String e){ 
      name=n; 
      email=e; 
    }
	}

	//Create an array to hold users
	User users[];

	//Use jspInit to initialize the array
	public void jspInit(){
		users = new User[3];
		users[0] = new User("john", "john@johns.com");
		users[1] = new User("mary", "mary@marys.com");
		users[2] = new User("bob", "bob@bobs.com");
	}

	//Just a getter method
	User[] getLoggedInUsers(){
		return users;
	}
%>


<%--
	Pay attention to the way the scriptlets and expressions are
	used below to create a variable sized table.
--%>
<html><body>
      List of logged in users:
   <table>
   
   <tr>
      <th> Name </th>
      <th> email </th>
   </tr>

   <%
      User[] users = getLoggedInUsers();

      for(int i=0; i< users.length; i++) 
      { 

   %>

     <tr>
        <td> <%= users[i].name %> </td>
        <td> <%= users[i].email %> </td>
     </tr>

   <%
      } // For loop ends
   %>

   </table>
</body></html>
