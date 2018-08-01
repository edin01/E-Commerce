package servlets;

import dados.Brinquedos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

@WebServlet(name = "Produtos", urlPatterns = {"/Produtos"})
public class Produtos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            String NmProduto = request.getParameter("dd");
            String Preço = request.getParameter("ee");
            String Marca = request.getParameter("ff");
            String Descrição = request.getParameter("gg");
            int IdCate = Integer.parseInt(request.getParameter("hh"));
        
            Brinquedos brinquedos = new Brinquedos();
            
            brinquedos.setNomebrinquedo(NmProduto);
            brinquedos.setPreço(Preço);
            brinquedos.setMarca(Marca);
            brinquedos.setDescrição(Descrição);
            brinquedos.setIdcategoria(IdCate);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AddProduto(brinquedos);
            
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
