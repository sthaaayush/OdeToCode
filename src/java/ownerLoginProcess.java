//TThis code compares the user input with database data to verify the user
//For processing owners details

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/logProcess"})
public class ownerLoginProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            HttpSession ownerSession=request.getSession(false);
            //Receving data from requested webpage to compare with database information
            String email = request.getParameter("mail");
            String ePass = request.getParameter("pass");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                String loginVerifySql = "SELECT * FROM owner;";
                PreparedStatement stm = con.prepareStatement(loginVerifySql);
                ResultSet rs = stm.executeQuery();
                int flag = 0; //this flag is to check all the combination of password and email with user information
                while (rs.next()) {
                    if (email.equals(rs.getString("email")) && ePass.equals(rs.getString("pass"))) {
                        flag = 1;//valid information
                        break;
                    } else {
                        flag = 0;//invalid information
                    }
                }
                if (flag == 1) {
                    ownerSession.setAttribute("id", rs.getString("id"));
                    RequestDispatcher rd = request.getRequestDispatcher("ownerDashbord.jsp");//redirected to main page
                } else {
                    request.setAttribute("errorMessage", "Email or Password is Incorrect");//included error message
                    RequestDispatcher rd = request.getRequestDispatcher("ownerLoginPage.jsp");//redirected back to login page
                    rd.include(request, response);//including error message
                }
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                request.setAttribute("errorMessage", "Exception caught:" + e.getMessage());//included error message
                RequestDispatcher rd = request.getRequestDispatcher("ownerLoginPage.jsp");//redirected back to login page
                rd.include(request, response);//including error message
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
