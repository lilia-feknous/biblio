package dz.app.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dz.app.beans.Book;
import dz.app.dao.BookDao;

@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Add() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/Add.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request .getParameter("btn_add")!=null) { 
			String title = request.getParameter("title");
		    String author = request.getParameter("author");
			float price = Float.parseFloat(request.getParameter("price"));
		    Book newBook = new Book(title, author, price);
			BookDao bookDAO=new BookDao();
			  try {
			bookDAO.insertBook(newBook);
			} catch (SQLException e) {
			e.printStackTrace();
			}
		    response.sendRedirect("ListBook");}

	}

}
