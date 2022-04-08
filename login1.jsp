<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String role = request.getParameter("role");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;

    rs = st.executeQuery("select * from slogin where ENR='" + userid + "' and Password='" + pwd + "'");

    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("login.jsp");
    } else {
        out.println("Invalid password <a href='index.html'>try again</a>");
    }
%>