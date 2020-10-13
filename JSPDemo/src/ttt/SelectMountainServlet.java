package house.hList.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import house.hList.dao.MountainHouseDAO_JDBC;
import house.hList.model.HouseBeen;

@WebServlet("/house/hList/SelectMountainServlet")
public class SelectMountainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("44");
		
		String add = request.getParameter("smountain");
		System.out.println(add);
		MountainHouseDAO_JDBC DAO = new MountainHouseDAO_JDBC();
		try {
//			ArrayList<HouseBeen> see =(ArrayList<HouseBeen>) DAO.listMH(add);
			ArrayList<HouseBeen> sm =(ArrayList<HouseBeen>) DAO.selectMountain(add);
//			ArrayList<HouseBeen> sn =(ArrayList<HouseBeen>) DAO.selectName(add);
			
			
//			request.setAttribute("all", see);
			request.setAttribute("mountain", sm);
//			request.setAttribute("name", sn);
		request.getRequestDispatcher("house.jsp").forward(request, response);
			
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
