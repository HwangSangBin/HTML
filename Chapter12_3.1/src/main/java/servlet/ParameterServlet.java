package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Parameter.do")
public class ParameterServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getMethod();
		if(method.equals("GET")) {
			doGet(request, response);
		}else {
			doPost(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String[] hobbyArray = request.getParameterValues("hobby");
		System.out.println(name);
		for(String hobby : hobbyArray) {
			System.out.println(hobby);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String[] hobbyArray = request.getParameterValues("hobby");
		System.out.println(name);
		for(String hobby : hobbyArray) {
			System.out.println(hobby);
		}
	}

}
