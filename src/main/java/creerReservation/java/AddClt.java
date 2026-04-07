
package creerReservation.java;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddClt")
public class AddClt extends HttpServlet {
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom= request.getParameter("nom");
		String prenom= request.getParameter("prenom");
		String tel= request.getParameter("tel");
		String email= request.getParameter("email");
		
		request.setAttribute("message", "Client ajouter avec succes");
		request.setAttribute("nom",nom);
		request.setAttribute("prenom",prenom);
		request.setAttribute("tel",tel);
		request.setAttribute("mail",email);



		RequestDispatcher rd=request.getRequestDispatcher("client.jsp");
		rd.forward(request, response);
		



		
		
		
	}

}
