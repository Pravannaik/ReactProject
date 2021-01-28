package com.par.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.Flags.Flag;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.par.dao.MovieDAO;
import com.par.dao.MovieDAOImpl;
import com.par.entity.Movies;







@WebServlet("/")
public class MovieController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher = null;
	MovieDAO movieDAO = null;
	
	public MovieController() {
		movieDAO = new MovieDAOImpl();
	}
	
	private String language = "''";
	private String genree = "''";
	private String sorrt = "''";

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listMovie(request, response);
				break;
				
			case "EDIT":
				//getSingleEmployee(request, response);
				break;
				
			case "DELETE":
				//deleteEmployee(request, response);
				break;
				
			default:
				listMovie(request, response);
				break;
				
		}
		
	}
	
	
	private void listMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int page = 1;
		int recPerPage = 6;
		
		String flag = request.getParameter("sub");
		if(flag != null) {
			
			if(flag.equalsIgnoreCase("Filter")){
				String lang = request.getParameter("filtLang");
				String genre = request.getParameter("filtGenre");
				String sort = request.getParameter("sort");
				if(lang.equals("''") && genre.equals("''") && !sort.equals("''")){
					sorrt = sort;
				}else{
					language = lang;
					genree = genre;
					sorrt = sort;
				}	
			}
			
			System.out.println("Subbbbb"+flag);
			System.out.println(flag+" "+language);
			System.out.println(flag+" "+genree);
			System.out.println(flag+" "+sorrt);
		}
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		List<Movies> theList = movieDAO.getMovieList(language, genree, sorrt, (page-1)*recPerPage, recPerPage);
		
		int numOfRec = movieDAO.getNumberOfRecords();
		int numOfPage = (int) Math.ceil(numOfRec * 1.0 / recPerPage);
		
		System.out.println(numOfRec);
		System.out.println(theList);
		System.out.println(numOfPage);
		
		request.setAttribute("list", theList);
		request.setAttribute("numOfPages", numOfPage);
		request.setAttribute("currPage", page);
		
		dispatcher = request.getRequestDispatcher("/view/list.jsp");
		
		dispatcher.forward(request, response);
	}
}
