package org.elearning.servlet;



import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(urlPatterns = { "/home"})
public class SignUpServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public  SignUpServlet() {
       super();
   }
 
   
}