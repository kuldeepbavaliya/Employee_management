<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
<body>


		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">f_name</th>
		      <th scope="col">l_name</th>
		      <th scope="col">salary</th>
		      <th scope="col">doj</th>
		      <th scope="col">dep_id</th>
		      <th scope="col">created_dt</th>
		      <th scope="col">created_by</th>
		      <th scope="col">updated_dt</th>
		      <th scope="col">updated_by</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		      
		    <%
		int id;
		try{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement(); 
		ResultSet rs=s.executeQuery("select * from employee order by updated_dt desc");
		while(rs.next())
		{
		%>
		<tr>
		<th scope="row"><% out.println(rs.getInt("id")); %></th>
		<td><% out.println(rs.getString("f_name")); %>
		<td><% out.println(rs.getString("l_name")); %>
		<td><% out.println(rs.getInt("salary")); %>
		<td><% out.println(rs.getString("doj")); %>
		<td><% out.println(rs.getInt("dep_id")); %>
		<td><% out.println(rs.getDate("created_dt")); %>
		<td><% out.println(rs.getString("created_by")); %>
		<td><% out.println(rs.getDate("updated_dt")); %>
		<td><% out.println(rs.getString("updated_by")); %>
		<td>
			
				<a href="updateEmployee.jsp">Update
				</a>
			
		</td>
		<td>
			
				<a href="deletemassage.jsp" >Delete
				</a>
			
		</td>
		<%
		} 
		}
		catch(Exception e)
		{
			out.println(e);
		}
		%>
		  </tbody>
		</table>
	<center><a href="index.jsp"><input type="submit" value="Welcom"></a></center>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>                                                      
</body>
</html>