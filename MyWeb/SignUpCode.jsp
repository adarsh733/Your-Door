<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%

String name=   request.getParameter("name");
String id=   request.getParameter("id");
String pass=   request.getParameter("pass");
String cpass=   request.getParameter("cpass");
String contact=   request.getParameter("contact");
String email=   request.getParameter("email");
String city=   request.getParameter("city");
String address=   request.getParameter("address");
String gender=   request.getParameter("");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("insert into dynamiclogin values(?,?,?,?,?,?,?,?,?));
st.setString(1,name);
st.setString(2,id);
st.setString(3,pass);
st.setString(4,cpass);
st.setString(5,contact);
st.setString(6,email);
st.setString(7,city);
st.setString(8,address);
st.setString(9,gender);
st.executeUpdate();
out.println("Request Sent");
 %>              