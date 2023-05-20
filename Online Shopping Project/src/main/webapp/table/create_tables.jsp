<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
   try
{
       Connection con=ConnectionProvider.getCon();
       Statement st=con.createStatement();
       String q1 ="CREATE TABLE users ("
               + "name VARCHAR(100), "
               + "email VARCHAR(100) PRIMARY KEY, "
               + "mobilenumber VARCHAR(20), "
               + "securityQuestion VARCHAR(255), "
               + "answer VARCHAR(255), "
               + "password VARCHAR(255), "
               + "address VARCHAR(255), "
               + "city VARCHAR(100), "
               + "state VARCHAR(100), "
               + "country VARCHAR(100)"
               + ")"; 
       String q2 = "CREATE TABLE product ("
               + "id INT PRIMARY KEY, "
               + "name VARCHAR(100), "
               + "category VARCHAR(50), "
               + "price DECIMAL(10,2), "
               + "active VARCHAR(10)"
               + ")";
       String q3 = "CREATE TABLE cart ("
               + "email VARCHAR(100), "
               + "product_id INT, "
               + "quantity INT, "
               + "price DECIMAL(10, 2), "
               + "total DECIMAL(10, 2), "
               + "address VARCHAR(500), "
               + "city VARCHAR(500), "
               + "state VARCHAR(500), "
               + "country VARCHAR(100), "
               + "mobilenumber BIGINT, "
               + "orderDate VARCHAR(100), "
               + "deliveryDate VARCHAR(100), "
               + "paymentMethod VARCHAR(100), "
               + "transactionId VARCHAR(100), "
               + "status VARCHAR(10)"
               + ")";

       //st.execute(q1);
       System.out.println(q3);
       st.execute(q3);
       System.out.println("Table created");
       con.close();
       
       
      
       
}
catch(Exception e)
{
    System.out.print(e);
}
%>