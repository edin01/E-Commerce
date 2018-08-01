package servlets;

import dados.Usuarios;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Alterausuario", urlPatterns = {"/Alterausuario"})
public class Alterausuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            Usuarios user = new Usuarios();
            
            int id = Integer.parseInt(request.getParameter("idusuario"));
            String nome = request.getParameter("nomeusuario");
            String senha = request.getParameter("senha");
            String email = request.getParameter("email");

            user.setLogin(nome);
            user.setSenha(senha);
            user.setEmail(email);
            user.setId(id);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AlterarUsuario(user);
            
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
