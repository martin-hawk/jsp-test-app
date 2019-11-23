package pro.vanagas.logout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = "/logout.do")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = -4981947939349689725L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(request, response);
	}
}
