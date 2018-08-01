/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dados.Brinquedos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DadosDAO;

/**
 *
 * @author Edson
 */
@WebServlet(name = "Alteracategoria", urlPatterns = {"/Alteracategoria"})
public class Alteracategoria extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            
            String NmCategoria = request.getParameter("nomecategoria");
            int IdCategoria = Integer.parseInt(request.getParameter("idcategoria"));
        
            Brinquedos brinquedos = new Brinquedos();
            
            brinquedos.setNomecategoria(NmCategoria);
            brinquedos.setIdcategoria(IdCategoria);
            
            DadosDAO dd = new DadosDAO();
            
            dd.AlteraCategoria(brinquedos);
            
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

