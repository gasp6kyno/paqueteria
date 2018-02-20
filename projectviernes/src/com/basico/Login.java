package com.basico;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 //me llega la url "proyecto/login/out"
        String action=(request.getPathInfo()!=null?request.getPathInfo():"/out");
        HttpSession sesion = request.getSession();
        if(action.equals("/out")){
            sesion.invalidate();
            response.sendRedirect("login.jsp");
        }else{
           
        }
    }
	 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession sesion = request.getSession();
	        String usu, pass;
	        usu = request.getParameter("user");
	        pass = request.getParameter("password");
	        
	      

	        //Get Connection
	        
			
			  try {
				  Class.forName("com.mysql.jdbc.Driver");
				  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/viernes","root","");
		
	       
	         
	          PreparedStatement Statement = con.prepareStatement("select * from transportistas Where nombre='" + usu +"' and password='" +pass+"'");;
	          
	          ResultSet rs = Statement.executeQuery();
	          String nombre;
	          String password;
	          while(rs.next()) {
	         		
	         		nombre =(String) request.getSession().getAttribute(rs.getString("nombre"));
	         		password =(String)	request.getSession().getAttribute(rs.getString("password"));
	         		
	         		if(usu.equals(rs.getString("nombre")) && pass.equals(rs.getString("password")) && sesion.getAttribute("usuario") == null){
			            //si coincide usuario y password y adem�s no hay sesi�n iniciada
			            sesion.setAttribute("usuario", usu);
			            //redirijo a p�gina con informaci�n de login exitoso
			            response.sendRedirect("llevar.jsp");
			        }else{
			            //l�gica para login inv�lido
			        }
		       
	         		
	         		}           
	                con.close();
	      			} catch (SQLException | ClassNotFoundException e) {
	      				// TODO Auto-generated catch block
	      				e.printStackTrace();
	      			}
	          
			  
	    }
	}



