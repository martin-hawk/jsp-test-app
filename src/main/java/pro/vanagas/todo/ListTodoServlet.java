package pro.vanagas.todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import pro.vanagas.todo.TodoService;

@WebServlet(urlPatterns = "/list-todos.do")
public class ListTodoServlet extends HttpServlet {

	private static final long serialVersionUID = -4981947939349689725L;
	TodoService todoService = new TodoService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("todos", todoService.getTodos());
		request.getRequestDispatcher("/WEB-INF/views/List-todos.jsp").forward(request, response);
	}
}
