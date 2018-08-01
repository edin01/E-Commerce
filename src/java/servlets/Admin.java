package servlets;

import dados.Usuarios;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Admin", urlPatterns = {"/Admin"})
public class Admin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            String Loginadm = request.getParameter("adminlogin");
            String Senhaadm = request.getParameter("adminsenha");
            
            Usuarios user = new Usuarios();
            
            user.setLogin(Loginadm);
            user.setSenha(Senhaadm);
            
            DadosDAO dd = new DadosDAO();
            
            String status = dd.VerificaUsuario(user);
            
            if(status == "true"){
			response.sendRedirect("administrativa.jsp");
		}else{  
                        request.setAttribute("mensagem","Usuário ou Senha Inválidos!");
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
                        dis.forward(request, response);
		}
            
        }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
