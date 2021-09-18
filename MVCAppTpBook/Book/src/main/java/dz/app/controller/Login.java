package dz.app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dz.app.beans.LoginBean;
import dz.app.dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Login() {
        super();
      }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("btn_login")!=null) { 

			    String username=request.getParameter("txt_username"); 
				String password=request.getParameter("txt_password");
				LoginBean loginBean=new LoginBean(); 

				loginBean.setUsername(username);
				loginBean.setPassword(password);

				LoginDao loginDao=new LoginDao(); 
				String authorize=loginDao.authorizeLogin(loginBean); 

				if(authorize.equals("SUCCESS LOGIN")) 
				{
				HttpSession session=request.getSession(); 
				session.setAttribute("login", loginBean.getUsername()); 
				RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/Home.jsp");
				rd.forward(request, response) ;}

				else
				{
				request.setAttribute("WrongLoginMsg",authorize);
				System.out.println("wrong Username or password ");
				RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/Login.jsp");
				rd.include(request, response) ;}
	}
	}

}
