<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String email=session.getAttribute("email").toString();
    String id=request.getParameter("id");
    String incdec=request.getParameter("quantity");
    int price=0;
    int total=0;
    int quantity=0;
    int final_total=0;
    try
    {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs=st.executeQuery("select * from cart where product_id='"+id+"' and email='"+email+"' and address is NULL");
        while(rs.next())
        {
            price=rs.getInt(4);
            total=rs.getInt(5);
            quantity=rs.getInt(3);
            
        }
        if(quantity==1 && incdec.equals("dec"))
            response.sendRedirect("myCart.jsp?msg=notPossible");
        else if(quantity!=1 && incdec.equals("dec"))
        {
            total-=price;
            quantity--;
            st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where product_id='"+id+"' and email='"+email+"' and address is NULL");
            response.sendRedirect("myCart.jsp?msg=dec");
        }
        else 
        {
            total+=price;
            quantity++;
            st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where product_id='"+id+"' and email='"+email+"' and address is NULL");
            response.sendRedirect("myCart.jsp?msg=inc");
        }
    }catch(Exception e)
    {
        System.out.println(e);
        //response.sendRedirect("myCart.jsp?msg=dec");
        
    }
%>