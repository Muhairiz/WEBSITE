
import com.mysql.jdbc.Statement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Servlet1 extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request,response);
        String name = request.getParameter("name");
        String regnumber = request.getParameter("regn0");
        String grade = request.getParameter("grade");
        String phoneno = request.getParameter("phone");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String reginfo = request.getParameter("name");

        Statement stmt = null;
        Connection conn =null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcs","root","");
            stmt = (Statement) conn.createStatement();
            response.getWriter().append("Connected");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().append("not");
        }
            try{
                assert conn != null;
                stmt = (Statement) conn.createStatement();
                stmt.executeUpdate("INSERT INTO walimu(name,regnumber,grade,phone,email,gender,semester_info) VALUE ('"+name+"',+'"+regnumber+"',+'"+grade+"',+'"+phoneno+"',+'"+email+"',+'"+gender+"'+'"+reginfo+"')");
            } catch (SQLException e) {
                e.printStackTrace();
            }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {



    }
}
