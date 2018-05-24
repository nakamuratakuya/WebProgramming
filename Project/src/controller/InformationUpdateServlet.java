package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class InfomationUpdate
 */
@WebServlet("/InformationUpdateServlet")
public class InformationUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformationUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		UserDao userdao = new UserDao();
		User user = userdao.selectId(id);

		  // HttpSessionインスタンスの取得
	    HttpSession session = request.getSession();

		session.setAttribute("user", user);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/informationUpdate.jsp");
		dispatcher.forward(request, response);
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
		String birthdate = request.getParameter("birthDate");
		System.out.println(password1+password2);
		System.out.println(loginId);
		System.out.println(name);
		System.out.println(birthdate);

		if(password1.equals("")) {
			if(password2.equals("")) {
				System.out.println("ggggggggg");
				UserDao userDao = new UserDao();
				userDao.partUpdate(name,birthdate,loginId);
				response.sendRedirect("UserListServlet");
				return;
			}
			return;
		}


		if(!password1.equals(password2)) {
			// リクエストスコープにエラーメッセージをセット
			request.setAttribute("errMsg", "passwordが違います。");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/informationUpdate.jsp");
			dispatcher.forward(request, response);
			return;
		}

		//jsp側でrequiredを使用。

//		if(name  == null)	{
//			request.setAttribute("errMsg", "入力の無い項目があります。");
//		}

//		if(birthdate == null) {
//			request.setAttribute("errMsg", "入力の無い項目があります。");
//		}

		UserDao userDao = new UserDao();
		userDao.informationUpdate(password1,name,birthdate,loginId);
		System.out.println("dddddd");

		HttpSession session = request.getSession();
		 session.removeAttribute("user");

		response.sendRedirect("UserListServlet");


	}

}
