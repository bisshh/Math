package info.math.resham.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class linearServlet
 */
@WebServlet("/linearServlet")
public class linearServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public linearServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		out.println("Hello! from the POST method " + userName + "! We know your full name is " + fullName);
		String prof = request.getParameter("prof");
		out.println("You are " + prof);
		//String location = request.getParameter("location");
		String[] location = request.getParameterValues("location");
		out.println("You are from " + location.length + "places");
		
		for (int i=0; i<location.length; i++){
			out.println(location[i]);
		}
		
		// variable declaration
		double a1, a2, b1, b2, c1, c2, temp_a1, temp_a2, temp_b1, temp_b2, temp_c1, temp_c2;
		
		if(isset($_POST['submit']))
		{
			$a1 = $_POST['x1'];
			$b1 = $_POST['y1'];
			$a2 = $_POST['x2'];
			$b2 = $_POST['y2'];
			$c1 = $_POST['result1'];
			$c2 = $_POST['result2'];
					
			if(abs($a1-$a2) > $a1)
			{
				$temp_a1 = -$a2*$a1;
				$temp_b1 = -$a2*$b1;
				$temp_c1 = -$a2*$c1;
			}
			else
			{
				$temp_a1 = $a2*$a1;
				$temp_b1 = $a2*$b1;
				$temp_c1 = $a2*$c1;
			}
			
			$temp_a2 = (-$a1)*$a2;
			$temp_b2 = (-$a1)*$b2;
			$temp_c2 = (-$a1)*$c2;
			
			$y = ($temp_c1 + $temp_c2)/($temp_b1 + $temp_b2);
			$x = ($c1 - ($b1 * $y))/$a1;
			
		}
		
	}

}
