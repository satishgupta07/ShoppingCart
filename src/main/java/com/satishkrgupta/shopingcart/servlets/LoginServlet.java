package com.satishkrgupta.shopingcart.servlets;

import com.satishkrgupta.shopingcart.dao.UserDao;
import com.satishkrgupta.shopingcart.entities.User;
import com.satishkrgupta.shopingcart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            String username = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            
            //validations
            
            //authenticating user
            UserDao userDao = new UserDao(FactoryProvider.getFactory());
            User user = userDao.getUserByNameAndPassword(username, password);
            
            HttpSession httpSession = request.getSession();
            
            if(user==null) {
                httpSession.setAttribute("message", "Invalid Details !! Try with another one");
                response.sendRedirect("login.jsp");
                return;
            }else {
                out.println("<h1>Welcome "+user.getUserName()+"</h1>");
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
