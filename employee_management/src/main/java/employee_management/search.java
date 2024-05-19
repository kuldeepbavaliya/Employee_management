package employee_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/search")
public class search extends HttpServlet 
{
		public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
		{
			String search=req.getParameter("search");
			PrintWriter r=res.getWriter();
			
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
			
			Statement s=c.createStatement();
			
			ResultSet rs=s.executeQuery("select * from employee where f_name='"+search+"'");
			
			HttpSession se=req.getSession();
			
			while(rs.next())
			{
				se.setAttribute("fn", rs.getString("f_name"));
				se.setAttribute("ln", rs.getString("l_name"));
				se.setAttribute("sa", rs.getInt("salary"));
				se.setAttribute("doj", rs.getString("doj"));
				se.setAttribute("de", rs.getInt("dep_id"));
			

			}
					res.sendRedirect("updateEmployee.jsp");
			}
			catch(Exception e)
			{
				res.sendRedirect("Error.jsp");
			}
			
		}
}
