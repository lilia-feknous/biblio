package dz.app.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dz.app.beans.Book;
import dz.app.dao.BookDao;

@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Edit() {
        super();
       }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        BookDao BookDAO=new BookDao();
        Book existingBook;
		try {
		existingBook = BookDAO.getBook(id);
		request.setAttribute("book", existingBook);
		} catch (SQLException e) {
			e.printStackTrace();}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Edit.jsp");
        dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request .getParameter("btn_edit")!=null) {
		       int id = Integer.parseInt(request.getParameter("id"));
		       String title = request.getParameter("title");
		       String author = request.getParameter("author");
		       float price = Float.parseFloat(request.getParameter("price"));
		       BookDao bookDAO=new BookDao();
		       Book book = new Book(id, title, author, price);
		       try {
		       bookDAO.updateBook(book);
		       } catch (SQLException e) {
		       e.printStackTrace();}
		       response.sendRedirect("ListBook");
		}}

}
