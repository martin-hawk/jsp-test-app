package pro.vanagas.todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import pro.vanagas.todo.TodoService;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private static final long serialVersionUID = -4981947939349689725L;
	TodoService todoService = new TodoService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/Add-todo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String newTodo = request.getParameter("todo");
		String newCategory = request.getParameter("category");
		todoService.addTodo(new Todo(newTodo, newCategory));

		response.sendRedirect("/list-todos.do"); // redirect to avoid duplicate submit
	}
}
