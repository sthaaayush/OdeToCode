import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/customerLoginProcess"})
public class customerLoginProcess extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //Receving data from requested webpage to compare with database information
            String email = request.getParameter("cEmail");
            String ePass = request.getParameter("cPass");
            out.write(email);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                String loginVerifySql = "SELECT * FROM customer;";
                PreparedStatement stm = con.prepareStatement(loginVerifySql);
                ResultSet rs = stm.executeQuery();
                int flag = 0; //this flag is to check all the combination of password and email with user information
                while (rs.next()) {
                    if (email.equals(rs.getString("cEmail")) && ePass.equals(rs.getString("cPass"))) {
                        flag = 1;//valid information
                    } else {
                        flag = 0;//invalid information
                    }
                }
                if (flag == 1) {
                    RequestDispatcher rd = request.getRequestDispatcher("customerDashboard.jsp");//redirected to main page
                    rd.include(request, response);
                } else {
                    request.setAttribute("errorMessage", "Email or Password is Incorrect");//included error message
                    RequestDispatcher rd = request.getRequestDispatcher("customerLoginPage.jsp");//redirected back to login page
                    rd.include(request, response);//including error message
                }
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                out.write("Exception caught: " + e.getMessage());
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
