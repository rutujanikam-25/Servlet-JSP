package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UseDao;

/**
 * Servlet implementation class oddNumber
 */
@WebServlet("/OddNum")
public class oddNumber extends HttpServlet {
	private static final long serialVersionUID = 1L;
    int addition=0;
    ArrayList<Integer> list=new ArrayList<Integer>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public oddNumber() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int number=Integer.parseInt(request.getParameter("num"));
		    ArrayList<Integer> list=UseDao.odd(number);
		    HttpSession session=request.getSession();
		    session.setAttribute("list1",list);
		    
			RequestDispatcher rd= request.getRequestDispatcher("OddNumber.jsp");
			rd.include(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
