package pro.vanagas.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import pro.vanagas.login.LoginService;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = -4981947939349689725L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String name = request.getParameter("name");
		// System.out.println(request.getParameter("name"));

		// request.setAttribute("name", request.getParameter("name"));
		// request.setAttribute("password", request.getParameter("password"));
		request.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");

		String password = request.getParameter("pass");

		LoginService userValidationService = new LoginService();
		boolean userIsValid = userValidationService.isUserValid(name, password);

		if (userIsValid) {
			request.getSession().setAttribute("name", name); // variable put in the session
			response.sendRedirect("/list-todos.do");
		} else {
			request.setAttribute("error", "Invalid name or password!");
			request.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(request, response);
		}

	}

}
