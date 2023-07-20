/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
@WebServlet(urlPatterns = {"/maintainenceProcess"})
public class maintainenceProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           String productName = request.getParameter("productName");
            String productissue = request.getParameter("productissue");
            String date = request.getParameter("date");
            String place = request.getParameter("place");
            
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                        String loginVerifySql = "INSERT INTO maintainenceissue "
                                + "(productName,productissue,date,place) "
                                + "VALUES(?,?,?,?);";
                        PreparedStatement stm = con.prepareStatement(loginVerifySql);
                        stm.setString(1, productName);
                        stm.setString(2, productissue);
                        stm.setString(3, date);
                        stm.setString(4, place);
                     
                        stm.executeUpdate();
                        request.setAttribute("errorMessage", "Submitted Successfully!!!");//included success message
                        RequestDispatcher rd = request.getRequestDispatcher("maintenanceDashbord.jsp");//redirected back to login page
                        rd.include(request, response);//including success message
                        con.close();
                    } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
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
