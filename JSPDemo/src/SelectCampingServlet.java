
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import mvcdemo.bean.CampingBean;

public class SelectCampingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String add = request.getParameter("ccamping");
		
		DataSource ds = null;
		InitialContext ctxt = null;
		Connection conn = null;

		try {
			// 建立Context Object,連到JNDI Server
			ctxt = new InitialContext();

			// 使用JNDI API找到DataSource
			ds = (DataSource) ctxt.lookup("java:comp/env/jdbc/xe");
			conn = ds.getConnection();
			CampingDAO DAO = new CampingDAO(conn);
			ArrayList<CampingBean> sm = (ArrayList<CampingBean>) DAO.selectCamping(add);

			request.setAttribute("camping", sm);

			request.getRequestDispatcher("Campinginsert.jsp").forward(request, response);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
