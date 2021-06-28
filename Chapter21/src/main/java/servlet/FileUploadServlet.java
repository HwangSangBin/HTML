package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/upload.do")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/upload";				// 저장위치
		ServletContext application = request.getServletContext();
		String RealPath = application.getRealPath(path);
		System.out.println(path);
		int MaxSize = 1024 * 1024 * 10;
		
		MultipartRequest mr = new MultipartRequest(request, RealPath, MaxSize, 
												   "utf-8", 
												   new DefaultFileRenamePolicy());
		String title = mr.getParameter("title");
		File file = mr.getFile("photo");
		String FileName = "no exist";
		if(file != null) {
			FileName = file.getName();
		}
		request.setAttribute("title", title);
		request.setAttribute("FileName", FileName);
		
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

}
