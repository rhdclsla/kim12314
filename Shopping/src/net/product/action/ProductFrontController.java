package net.product.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.action.Action;
import net.action.ActionForward;

public class ProductFrontController extends HttpServlet implements javax.servlet.Servlet{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			 	throws ServletException, IOException {
		System.out.println("01");
		String RequestURI=request.getRequestURI();
		System.out.println("02");
		String contextPath=request.getContextPath();
		System.out.println("03");
		String command=RequestURI.substring(contextPath.length());
		System.out.println("04");
		ActionForward forward=null;
		Action action=null;
		
		System.out.println(RequestURI);
		System.out.println(contextPath);
		System.out.println(command);
		

		if(command.equals("/product/ProductAddAction.po")) {
			action = new ProductAddAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
			//Shopping/product/./product/Product_add.jsp
		}else if(command.equals("/product/Product_add.po")) {
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath("Product_add.jsp");
		} 

		
		if(forward.isRedirect()){
			System.out.println("for " + forward.getPath());
			response.sendRedirect(forward.getPath());
		}else{
			RequestDispatcher dispatcher=
					request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}

	}
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
