package dz.app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dz.app.beans.RegisterBean;
import dz.app.dao.RegisterDao;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Register() {
        super();
        }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/Register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("btn_register")!=null)
		{

		String firstname=request.getParameter("txt_firstname") ;
		String lastname=request .getParameter("txt_lastname") ;
		String username=request .getParameter("txt_username"); 
		String password=request .getParameter("txt_password") ;

		RegisterBean registerBean=new RegisterBean();
		registerBean. setFirstname (firstname) ;
		registerBean. setLastname(lastname) ;
		registerBean.setUsername(username); 
		registerBean. setPassword (password) ;

		RegisterDao registerdao=new RegisterDao(); 
		String registerValidate=registerdao.authorizeRegister(registerBean); 

		if(registerValidate.equals("SUCCESS REGISTER")) 

		{

		request.setAttribute("RegiseterSuccessMsg" ,registerValidate);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/Home.jsp"); 
		rd.forward(request, response) ;
		}

		else

		{

		request. setAttribute("RegisterErrorlisg",registerValidate); 
		System.out.println("Failed To SignUp");
		RequestDispatcher rd=request .getRequestDispatcher("/WEB-INF/Register.jsp");
		rd.include(request, response) ;
		}

	}}}
