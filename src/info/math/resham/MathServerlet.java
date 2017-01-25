package info.math.resham;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MathServerlet
 */
@WebServlet(description = "a linear equation", urlPatterns = { "/LinearEquation" })
public class MathServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String userName = request.getParameter("userName");
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		if (userName != "" && userName != null){
			session.setAttribute("saveUserName", userName);
			context.setAttribute("saveUserName", userName);
		}		
		writer.println("Request parameter has username as : " + userName);
		writer.println("Session parameter has username as : " + (String) session.getAttribute("saveUserName"));
		writer.println("Context parameter has username as : " + (String) context.getAttribute("saveUserName"));
	}

}
