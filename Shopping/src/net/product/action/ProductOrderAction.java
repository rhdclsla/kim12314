package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;
import net.product.db.ProductBean;
import net.product.db.ProductDAO;

public class ProductOrderAction implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ProductDAO productdao = new ProductDAO();
		ProductBean productbean = new ProductBean();
		request.setCharacterEncoding("UTF-8");
		
		
		System.out.println("3");
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("ProductOrder.po");
		System.out.println("4");
		productdao.conClose();
		return forward;
		
	}
}