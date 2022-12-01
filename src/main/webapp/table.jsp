<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="DB.DB"%>

<%
if(request.getParameter("id")!=null)
{
	   Connection conc=DB.getconnection();
	   String id=request.getParameter("id");
	   PreparedStatement ps;
	   ps=conc.prepareStatement("DELETE FROM `feedback` WHERE feedback_id="+id+";");
	   ps.executeUpdate();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Table</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>
	<div class="table-container">
		<h1 class="heading">feedbacks</h1>
		<table class="table">
			<thread>
			<tr>
				<th>E-mail</th>
				<th>Message</th>
				<th>Description</th>
				<th>Edit feedback</th>
				<th>Delete feedback</th>
			</tr>
			</thread>
			<tbody>
				<%
									Connection con = DB.getconnection();
									String sqlQuery = "SELECT * FROM `feedback`  ";
									PreparedStatement pst;
									pst = con.prepareStatement(sqlQuery);
									ResultSet rst = pst.executeQuery();
									while (rst.next()) {
										String rating = rst.getString("rating");
										String msg = rst.getString("msg");
										String email = rst.getString("email");
										String id=rst.getString("feedback_id");
										%>
				<tr>
					<td data-lable="E-mail"><%=email %></tddata-lable></td>
					<td data-lable="Message"><%=rating %></td>
					<td data-lable="Message"><%=msg %></td>
					<td data-lable="Edit feedback"><a 
						class="btn"  href="edit_feedback.jsp?id=<%= id%>&rating=<%=rating %>&msg=<%=msg %>&email=<%=email %>" >Edit</a></td>
					<td data-lable="Delete feedback"><a  href="table.jsp?id=<%= id%>" class="btn1">Delete</a></td>
				</tr>
				<%} %>


			</tbody>
		</table>
	</div>

</body>
</html>
