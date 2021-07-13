package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;
import vo.EmployeeVo;


/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/employee/list.do")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<EmployeeVo> emp_list = EmployeeDao.getInstance().selectList();

		for(EmployeeVo evo : emp_list){
			System.out.printf("아이디 : %d, 이름 : %s, 부서아이디 : %s", evo.getEmp_id(), evo.getFir_name(), evo.getDept_id());
			System.out.println();
		}
	}
}