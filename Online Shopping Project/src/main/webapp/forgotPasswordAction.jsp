<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String mobilenumber=request.getParameter("mobilenumber");
    String securityQuestion=request.getParameter("securityQuestion");
    String answer=request.getParameter("answer");
    String newPassword=request.getParameter("newPassword");
    int check=0;
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users where email='"+email+"' && mobilenumber='"+mobilenumber+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
        while(rs.next())
        {
            check=1;
            st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        rs.close();
        if(check==0)
        {
            response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
        con.close();
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
%>
