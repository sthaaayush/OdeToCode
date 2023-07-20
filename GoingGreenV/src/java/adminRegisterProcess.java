/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aayus
 */
@WebServlet(urlPatterns = {"/adminRegisterProcess"})
public class adminRegisterProcess extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //Reciving all the datas send by ownerRegisterPage to store in database
            String eFname = request.getParameter("eFname");
            String eLname = request.getParameter("eLname");
            String ePhoneNumber = request.getParameter("ePhoneNumber");
            String eEmail = request.getParameter("eEmail");
            String ePass = request.getParameter("ePass");
            String confirmEPass = request.getParameter("confirmEPass");
            if (confirmEPass.equals(ePass)) {
                if (ePhoneNumber.length() == 10) {
                    //Store all the received information to database table owner
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                        String loginVerifySql = "INSERT INTO admin "
                                + "(eFname,eLname,ePhoneNumber,eEmail,ePass) "
                                + "VALUES(?,?,?,?,?);";
                        PreparedStatement stm = con.prepareStatement(loginVerifySql);
                        stm.setString(1, eFname);
                        stm.setString(2, eLname);
                        stm.setString(3, ePhoneNumber);
                        stm.setString(4, eEmail);
                        stm.setString(5, ePass);
                        stm.executeUpdate();
                        request.setAttribute("errorMessage", "Register Successfully!!!");//included success message
                        RequestDispatcher rd = request.getRequestDispatcher("adminLoginPage.jsp");//redirected back to login page
                        rd.include(request, response);//including success message
                        con.close();
                    } catch (Exception e) {
                        out.write("Exception caught: " + e.getMessage());
                    }
                } else {
                    request.setAttribute("errorMessage", "Invalid Phone Number");//included error message
                    RequestDispatcher rd = request.getRequestDispatcher("ownerRegisterPage.jsp");//redirected back to login page
                    rd.include(request, response);//including error message}
                }
            } else {
                request.setAttribute("errorMessage", "Password didn't match with each other");//included error message
                RequestDispatcher rd = request.getRequestDispatcher("adminRegisterPage.jsp");//redirected back to login page
                rd.include(request, response);//including error message
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
