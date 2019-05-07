package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;
import net.product.db.ProductBean;
import net.product.db.ProductDAO;

public class ProductDeleteAction implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		ProductDAO productdao = new ProductDAO();
		ProductBean productbean = new ProductBean();
		
		productbean.setProduct_code(Integer.parseInt(request.getParameter("code")));
		
		if(request.getParameter("code") != null) {
			if(!productdao.deleteProduct(productbean.getProduct_code())) {
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('Deletion is failed try again')");
				out.print("</script>");
				out.close();
				return null;
			}
		}else{
			return null;
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("상품등록 페이지");
		productdao.conClose();
		return forward;
		
	}
}
