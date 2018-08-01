package servlets;

import dados.Brinquedos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Alteraproduto", urlPatterns = {"/Alteraproduto"})
public class Alteraproduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            String NmProduto = request.getParameter("nomeproduto");
            String preco = request.getParameter("preco");
            String Marca = request.getParameter("marca");
            String Descrição = request.getParameter("descricao");
            int idproduto = Integer.parseInt(request.getParameter("idproduto"));
            int idcat = Integer.parseInt(request.getParameter("idcat"));
        
            Brinquedos brinquedos = new Brinquedos();
            
            brinquedos.setNomebrinquedo(NmProduto);
            brinquedos.setPreço(preco);
            brinquedos.setMarca(Marca);
            brinquedos.setDescrição(Descrição);
            brinquedos.setIdbrinquedo(idproduto);
            brinquedos.setIdcategoria(idcat);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AlteraProduto(brinquedos);
            
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
