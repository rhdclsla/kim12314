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
		
		String RequestURI=request.getRequestURI();
		
		String contextPath=request.getContextPath();
		
		String command=RequestURI.substring(contextPath.length());
		
		ActionForward forward=null;
		Action action=null;
		
		System.out.println(RequestURI);
		System.out.println(contextPath);
		System.out.println(command);
		
		if(command.equals("/product/ProductAddAction.po")) {
			action=new ProductAddAction();
			try {
				forward=action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(command.equals("/Product_add.po")) {
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./product/Product_add.jsp");
		}else if(command.equals("/product/ProductDeleteAction.po")) {
			System.out.println("go");
			forward=new ActionForward();
			System.out.println("gogo");
			forward.setRedirect(false);
			System.out.println("gogogo");
			forward.setPath("ProductDeleteAction.po");
			System.out.println(command);
	}
//		else if(command.equals()) {
//			
//		}else if(command.equals()) {
//			
//		}
//		 
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
