package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBHelper.Helper;
import Model.FeedbackModel;

/**
 * Servlet implementation class UpdateFeedback
 */
@WebServlet("/UpdateFeedback")
public class UpdateFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// getting comment details
		String rate=request.getParameter("rating");
		String msg=request.getParameter("msg");
		String email=request.getParameter("email");
		int id=Integer.parseInt(request.getParameter("id"));
		FeedbackModel model=new FeedbackModel(rate, msg, email,id);
		Helper helper=new Helper();
		String Message= helper.update(model);
		request.setAttribute("msg", Message);
		request.getRequestDispatcher("feedback.jsp").forward(request, response); 
	}

}
