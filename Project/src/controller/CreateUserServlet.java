package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

/**
 * Servlet implementation class CreatUser
 */
@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/createUser.jsp");
		dispatcher.forward(request, response);
		return;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
		// リクエストパラメータの入力項目を取得
				String loginId = request.getParameter("login_id");
				String password1 = request.getParameter("password1");
				String password2 = request.getParameter("password2");
				String name = request.getParameter("name");
				String birthdate = request.getParameter("birthdate");

				if(!password1.equals(password2)) {
					// リクエストスコープにエラーメッセージをセット
					request.setAttribute("errMsg", "passwordが違います。");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/createUser.jsp");
					dispatcher.forward(request, response);
				}

				UserDao userDao = new UserDao();
				userDao.createuser(loginId,password1,name,birthdate);

				response.sendRedirect("UserListServlet");
	}

}
