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

@WebServlet(urlPatterns = {"/adminLoginProcess"})
public class adminLoginProcess extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //Receving data from requested webpage to compare with database information
            String email = request.getParameter("eEmail");
            String ePass = request.getParameter("ePass");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                String loginVerifySql = "SELECT * FROM admin;";
                PreparedStatement stm = con.prepareStatement(loginVerifySql);
                ResultSet rs = stm.executeQuery();
                int flag = 0; //this flag is to check all the combination of password and email with user information
                while (rs.next()) {
                    if (email.equals(rs.getString("eEmail")) && ePass.equals(rs.getString("ePass"))) {
                        flag = 1;//valid information
                        break;
                    } else {
                        flag = 0;//invalid information
                    }
                }
                if (flag == 1) {
                    RequestDispatcher rd = request.getRequestDispatcher("adminDashbord.jsp");//redirected to main page
                } else {
                    request.setAttribute("errorMessage", "Email or Password is Incorrect");//included error message
                    RequestDispatcher rd = request.getRequestDispatcher("adminLoginPage.jsp");//redirected back to login page
                    rd.include(request, response);//including error message
                }
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                out.write("Exception caught: "+e.getMessage());
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
