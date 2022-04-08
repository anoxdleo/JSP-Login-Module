<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String name = request.getParameter("name");    
    String mail = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement",
            "root", "");
    Statement st = con.createStatement();


    int i = st.executeUpdate("INSERT INTO slogin(Name,ENR,Password,Email)VALUES('" + name + "' , '" + userid + "' , '" + pwd + "' , '" + mail + "')");


    out.println("Registration Successfull");
    out.println("<a href='logout.jsp'>LOGIN HERE</a>");
   
%>