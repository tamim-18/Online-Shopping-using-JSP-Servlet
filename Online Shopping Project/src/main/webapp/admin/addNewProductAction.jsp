<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try
{
    Connection con = ConnectionProvider.getCon(); //Get connection object from ConnectionProvider class

    PreparedStatement ps=con.prepareStatement("INSERT INTO product (id, name, category, price, active) VALUES (?, ?, ?, ?, ?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,category);
    ps.setString(4,price);
    ps.setString(5,active);
    int i=ps.executeUpdate();
    response.sendRedirect("addNewProduct.jsp?msg=done");
    con.close();
}
catch(Exception e)
{
    response.sendRedirect("addNewProduct.jsp?msg=wrong");
}

%>
