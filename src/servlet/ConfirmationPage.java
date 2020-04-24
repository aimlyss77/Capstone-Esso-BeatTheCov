package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfirmationPage
 */
@WebServlet("/ConfirmationPageServlet")
public class ConfirmationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmationPage() {
        super();
        // TODO Auto-generated constructor stub
       
    }
	/**

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    // NOTE: RequestPage.jsp calls this doPost from the form submission.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// NOTE: RequestPage.jsp sends all input fields as attributes to this Java file. We loop through all input fields with names, then get ready to send them to ConfirmationPage by copying them over 
		Enumeration attrs =  request.getAttributeNames();
		while (attrs.hasMoreElements()) {
			String attr = attrs.nextElement().toString();
			request.setAttribute(attr, request.getAttribute(attr));
		}
		// NOTE: Send the attributes we received to ConfirmationPage.jsp and redirect us there.
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ConfirmationPage");
		dispatcher.forward(request, response);
	}

}
