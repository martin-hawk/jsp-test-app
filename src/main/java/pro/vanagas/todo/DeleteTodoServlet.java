package pro.vanagas.todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import pro.vanagas.todo.TodoService;

@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {

	private static final long serialVersionUID = -1722596216715466943L;
	TodoService todoService = new TodoService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		todoService.deleteTodo(new Todo(request.getParameter("todo"), request.getParameter("category")));
		response.sendRedirect("/list-todos.do");
	}
}
