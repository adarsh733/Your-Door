<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%

String id=   request.getParameter("userId");
String pass=   request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select * from dynamiclogin  where userid=? and password=?");
st.setString(1,id);
st.setString(2,pass);
ResultSet rs= st.executeQuery();
if(rs.next())
{
 //   String name=rs.getString(3);
    //HttpSession interface 
   // session.setAttribute("DATA",name);//name:unique,value
    
    //Cookie ck=new  Cookie("websitename",id);
    //ck.setMaxAge(100000);//time in seconds
    //response.addCookie(ck);//HttpServletResponse interface
    
    response.sendRedirect("NextPage.jsp");
}
else
{
            out.println("invalid id/password");
}
%>
               