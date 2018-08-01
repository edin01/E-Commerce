package servlets;

import dados.Brinquedos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Deletaproduto", urlPatterns = {"/Deletaproduto"})
public class Deletaproduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            int IdProduto = Integer.parseInt(request.getParameter("idproduto"));
        
            Brinquedos brinquedos = new Brinquedos();
            
            brinquedos.setIdbrinquedo(IdProduto);
            
            DadosDAO dd = new DadosDAO();
            
            dd.RemoveProduto(brinquedos);
            
            response.sendRedirect("produtos.jsp");
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
