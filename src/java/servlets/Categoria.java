package servlets;

import dados.Brinquedos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Categoria", urlPatterns = {"/Categoria"})
public class Categoria extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            String NmCategoria = request.getParameter("cc");
        
            Brinquedos brinquedos = new Brinquedos();
            
            brinquedos.setNomecategoria(NmCategoria);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AddCategoria(brinquedos);
            
            response.sendRedirect("categorias.jsp");
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
