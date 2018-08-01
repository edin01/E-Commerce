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

@WebServlet(name = "Deletausuario", urlPatterns = {"/Deletausuario"})
public class Deletausuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            int Id = Integer.parseInt(request.getParameter("idusuario"));
        
            Usuarios user = new Usuarios();
            
            user.setId(Id);
            
            DadosDAO dd = new DadosDAO();
            
            dd.RemoverUsuario(user);
            
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
