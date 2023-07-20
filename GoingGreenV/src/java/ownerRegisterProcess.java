
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ownerRegisterProcess"})
public class ownerRegisterProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //Reciving all the datas send by ownerRegisterPage to store in database
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String companyName = request.getParameter("companyName");
            String street = request.getParameter("street");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String pan = request.getParameter("pan");
            String pass = request.getParameter("pass");
            String confirmOPass = request.getParameter("confirmOPass");
            if (confirmOPass.equals(pass)) {
                if (phoneNumber.length() == 10) {
                    //Store all the received information to database table owner
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                        String loginVerifySql = "INSERT INTO owner "
                                + "(fname,lname,phoneNumber,email,companyName,street,city,state,pan,pass) "
                                + "VALUES(?,?,?,?,?,?,?,?,?,?);";
                        PreparedStatement stm = con.prepareStatement(loginVerifySql);
                        stm.setString(1, fname);
                        stm.setString(2, lname);
                        stm.setString(3, phoneNumber);
                        stm.setString(4, email);
                        stm.setString(5, companyName);
                        stm.setString(6, street);
                        stm.setString(7, city);
                        stm.setString(8, state);
                        stm.setString(9, pan);
                        stm.setString(10, pass);
                        stm.executeUpdate();
                        request.setAttribute("errorMessage", "Register Successfully!!!");//included success message
                        RequestDispatcher rd = request.getRequestDispatcher("ownerLoginPage.jsp");//redirected back to login page
                        rd.include(request, response);//including success message
                        con.close();
                    } catch (Exception e) {
                        out.write("Exception caught: " + e.getMessage());
                    }
                } else {
                    request.setAttribute("errorMessage", "Invalid Phone Number");//included error message
                    RequestDispatcher rd = request.getRequestDispatcher("ownerRegisterPage.jsp");//redirected back to login page
                    rd.include(request, response);//including error message
                }
            } else {
                request.setAttribute("errorMessage", "Password didn't match with each other");//included error message
                RequestDispatcher rd = request.getRequestDispatcher("ownerRegisterPage.jsp");//redirected back to login page
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
