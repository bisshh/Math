package info.math.resham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import info.math.resham.dto.User;
import info.math.resham.service.loginService;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username, password;
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		loginService LoginService = new loginService();
		boolean result = LoginService.authenticate(username, password);
		
		if (result) {
			User user = LoginService.getUserDetails(username);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
			dispatcher.forward(request, response);
			return;
		}
		else {
			response.sendRedirect("login.jsp");
			return;
		}
	}

}
