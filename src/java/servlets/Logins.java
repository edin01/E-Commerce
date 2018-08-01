package servlets;

import dados.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Logins", urlPatterns = {"/Logins"})
public class Logins extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            Usuarios user = new Usuarios();
            
            String nome = request.getParameter("ii");
            String senha = request.getParameter("jj");
            String email = request.getParameter("kk");

            user.setLogin(nome);
            user.setSenha(senha);
            user.setEmail(email);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AddUsuario(user);
            
            response.sendRedirect("usuarios.jsp");
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
