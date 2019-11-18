<%@ page import="java.sql.*"%>

<body>

<%
    String user = request.getParameter("searchquery");
    String s = "*";
    String searchQ = user + s;

    String dbURL = "jdbc:mysql://localhost/movieDatabaseSchema";
    Strig query = "SELECT * FROM movie WHERE title = ?";

    try {
        Connection connection = DriverManager.getConnection(dbURL);
        PreparedStatement pstmt = connection.prepareStatement( query );
        pstmt.setString(1, searchQ);
        out.println(pstmt);
        ResultSet rs = pstmt.executeQuery( );
        rs.getString(1);
    }
    connection.close(); 
    catch(SQLException e) {
        e.printStackTrace();
    }
%>


</body>