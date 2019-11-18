<%@ page import="java.sql.*"%>

<body>

<%
    String userfName = request.getParameter("fname");
    String userlName = request.getParameter("lname");
    String userEmail = request.getParameter("email");
    String userEmailConfirm = request.getParameter("email-confirm");
    String password = request.getParameter("pass");
    String passwordConfirm = request.getParameter("pass-confirm");

    String dbURL = "jdbc:mysql://localhost/movieDatabaseSchema";
    String query = "INSERT INTO user 
    (uid, email, pass, fname, lname, cid, isAdmin)
    VALUES
    (?, ?, ?, ?, ?, ?, ?)"; // missing uid and cid

try {
    Connection connection = DriverManager.getConnection(dbURL);
    PreparedStatement pstmt = connection.prepareStatement( query );
    pstmt.setString(1, ); //missing uid
    pstmt.setString(2, userEmail);
    pstmt.setString(3, password);
    pstmt.setString(4, userfName);
    pstmt.setString(5, userlName);
    pstmt.setString(6, ); //cid
    pstmt.setString(7, ); // implement yes or no 

    out.println(pstmt);
    ResultSet rs = pstmt.executeQuery( );
%>
</body>