package creerReservation.java.copy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddRsv")
public class AddRsv extends HttpServlet {
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
         
		String nom= request.getParameter("nom");
		String prenom= request.getParameter("prenom");
		String tel= request.getParameter("tel");
		String email= request.getParameter("email");
		String type= request.getParameter("type");
		int prix=Integer.parseInt(request.getParameter("prix"));
		
		request.setAttribute("message", "Client ajouter avec succes");
		request.setAttribute("nom",nom);
		request.setAttribute("prenom",prenom);
		request.setAttribute("tel",tel);
		request.setAttribute("mail",email);	
		request.setAttribute("type",type);	
		request.setAttribute("prix",prix);		


		
		
		RequestDispatcher rd =request.getRequestDispatcher("rsvclient.jsp");
		rd.forward(request, response);
		
	}

}
