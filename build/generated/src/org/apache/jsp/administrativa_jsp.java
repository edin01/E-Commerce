package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class administrativa_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <title>Administração</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("        <script src=\"js/vendor/modernizr-2.8.3-respond-1.4.2.min.js\"></script>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        <nav class=\"navbar navbar-light\" style=\"background-color: #46b8da\">\n");
      out.write("           <a href=\"administrativa.jsp\"><img src=\"img/train.png\" width=\"50\" height=\"50\"></a>\n");
      out.write("           Hott'oys - Área administrativa!\n");
      out.write("           <a href=\"administrativa.jsp\"><img src=\"img/train.png\" width=\"50\" height=\"50\"></a>\n");
      out.write("           \n");
      out.write("           <div class=\"dropdown pull-right\">\n");
      out.write("            <a data-toggle=\"dropdown\"><img src=\"img/crown.png\" width=\"50\" height=\"50\"></a>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                <div class=\"formadmin1\">\n");
      out.write("                    Bem vindo a Área administrativa!<br>\n");
      out.write("                    Caso queira sair, clique no botão abaixo.<br>\n");
      out.write("                 \n");
      out.write("                 <button type=\"button\" class=\"btn-warning\" onclick=\"location.href='index.jsp'\">Sair</button>\n");
      out.write("                </div>\n");
      out.write("            </ul>\n");
      out.write("            </div>\n");
      out.write("       </nav>\n");
      out.write("       \n");
      out.write("        <div class=\"container recente\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"list-group\">\n");
      out.write("                        <a href=\"#\" class=\"list-group-item disabled\">Brinquedos</a>\n");
      out.write("\n");
      out.write("                        ");
 
    String nomecategoria;
    int id;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Categorias");
    while(rs.next()){
        nomecategoria = rs.getString("NomeCategoria");
        id = rs.getInt("IdCategoria");

      out.write("\n");
      out.write("                    \n");
      out.write("                    <a href=\"#\" class=\"list-group-item\" id=\"");
      out.print(id);
      out.write("\" onclick=\"Sessão(this)\">");
      out.print(nomecategoria);
      out.write("</a>\n");
      out.write("\n");
 }
        
    rs.close();
    stmt.close();
    conn.close();

      out.write("  \n");
      out.write("                    <a href=\"#\" class=\"list-group-item\" id=\"90\" onclick=\"Sessão(this)\">Todos</a>\n");
      out.write("                        \n");
      out.write("                        <br><br>\n");
      out.write("                        <a href=\"#\" class=\"list-group-item disabled\">Administração</a>\n");
      out.write("                        <a href=\"categorias.jsp\" class=\"list-group-item\">Categorias</a>\n");
      out.write("                        <a href=\"produtos.jsp\" class=\"list-group-item\">Produtos</a>\n");
      out.write("                        <a href=\"usuarios.jsp\" class=\"list-group-item\">Usuários</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8\" id=\"brinquedos\">                   \n");
      out.write("                    \n");
      out.write("                    <!-- Div para mostrar a aba de bonecos -->\n");
      out.write("                    \n");
      out.write("                    <div id=\"bonecos\" style=\"display:block\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/boneca1.jpg\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Boneca Docinho De Bebe<br>\n");
      out.write("                            R$ 64,89<br>\n");
      out.write("                            <a href=\"brinquedo1.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/boneco2.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Bonecos Turma Super Mario Bros 6 Peças<br>\n");
      out.write("                            R$ 89,90<br>\n");
      out.write("                            <a href=\"brinquedo2.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/boneca3.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Boneca Barbie Princesa Penteados Mágicos<br>\n");
      out.write("                            R$ 109,30<br>\n");
      out.write("                            <a href=\"brinquedo3.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <!-- Div para mostrar a aba de carrinhos -->\n");
      out.write("                    \n");
      out.write("                    <div id=\"carrinhos\" style=\"display:block\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/carro1.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Carro Land Evok Artoys<br>\n");
      out.write("                            R$ 7,99<br>\n");
      out.write("                             <a href=\"brinquedo4.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/carro3.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Carrinho Pick Up Vision Tuning<br>\n");
      out.write("                            R$ 38,84<br>\n");
      out.write("                             <a href=\"brinquedo5.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/carro2.jpg\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Kit com 3 Veículos Carros<br>\n");
      out.write("                            R$ 179,90<br>\n");
      out.write("                             <a href=\"brinquedo6.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("                        </div>    \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <!-- Div para mostrar a aba de jogos de mesa -->\n");
      out.write("                    \n");
      out.write("                    <div id=\"tabuleiros\" style=\"display:block\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/jogo1.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Jogo Pie Face!<br>\n");
      out.write("                            R$ 107,70<br>\n");
      out.write("                             <a href=\"brinquedo7.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/jogo2.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Jogo Pie Face: O Duelo<br>\n");
      out.write("                            R$ 139,99<br>\n");
      out.write("                             <a href=\"brinquedo8.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/jogo3.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Jogo Super Banco Imobiliário<br>\n");
      out.write("                            R$ 169,90<br>\n");
      out.write("                             <a href=\"brinquedo9.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <!-- Div para mostrar a aba de brinquedos para praia -->\n");
      out.write("                    \n");
      out.write("                    <div id=\"praia\" style=\"display:block\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/praia1.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Conjunto de Praia<br>\n");
      out.write("                            R$ 29,90<br>\n");
      out.write("                             <a href=\"brinquedo10.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/praia2.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Brinquedo Vou Pra Praia com 9 peças<br>\n");
      out.write("                            R$ 45,99<br>\n");
      out.write("                             <a href=\"brinquedo11.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <img src=\"img/praia3.png\" width=\"200\" height=\"150\"><br><br>\n");
      out.write("                            Tenda Praia Homem Aranha<br>\n");
      out.write("                            R$ 45,99<br>\n");
      out.write("                             <a href=\"brinquedo12.jsp\" class=\"btn-primary\">Saiba mais</a><br>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    </div> \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <br><br><div class=\"meio1\">\n");
      out.write("            <button type=\"button\" onclick=\"window.location.href='brinqrecentes.jsp'\" class=\"btn-primary\">Produtos recentes</button>\n");
      out.write("            </div>\n");
      out.write("         \n");
      out.write("        <footer class=\"footer\">\n");
      out.write("            Atura ou Surta\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("     <script>\n");
      out.write("            function Sessão(obj){\n");
      out.write("                document.getElementById('bonecos').style.display=\"block\";\n");
      out.write("                document.getElementById('carrinhos').style.display=\"block\";\n");
      out.write("                document.getElementById('tabuleiros').style.display=\"block\";\n");
      out.write("                document.getElementById('praia').style.display=\"block\";\n");
      out.write("                \n");
      out.write("                switch(obj.id){                    \n");
      out.write("                    case '1':\n");
      out.write("                    document.getElementById('bonecos').style.display=\"block\";\n");
      out.write("                    document.getElementById('carrinhos').style.display=\"none\";\n");
      out.write("                    document.getElementById('tabuleiros').style.display=\"none\";\n");
      out.write("                    document.getElementById('praia').style.display=\"none\";\n");
      out.write("                    \n");
      out.write("                    break\n");
      out.write("                    \n");
      out.write("                    case '2':\n");
      out.write("                    document.getElementById('bonecos').style.display=\"none\";\n");
      out.write("                    document.getElementById('carrinhos').style.display=\"block\";\n");
      out.write("                    document.getElementById('tabuleiros').style.display=\"none\";\n");
      out.write("                    document.getElementById('praia').style.display=\"none\";\n");
      out.write("                    break\n");
      out.write("                    \n");
      out.write("                    case '3':\n");
      out.write("                    document.getElementById('bonecos').style.display=\"none\";\n");
      out.write("                    document.getElementById('carrinhos').style.display=\"none\";\n");
      out.write("                    document.getElementById('tabuleiros').style.display=\"block\";\n");
      out.write("                    document.getElementById('praia').style.display=\"none\";\n");
      out.write("                    break\n");
      out.write("                    \n");
      out.write("                    case '4':\n");
      out.write("                    document.getElementById('bonecos').style.display=\"none\";\n");
      out.write("                    document.getElementById('carrinhos').style.display=\"none\";\n");
      out.write("                    document.getElementById('tabuleiros').style.display=\"none\";\n");
      out.write("                    document.getElementById('praia').style.display=\"block\";\n");
      out.write("                    break\n");
      out.write("                    \n");
      out.write("                   case '90':\n");
      out.write("                    document.getElementById('bonecos').style.display=\"block\";\n");
      out.write("                    document.getElementById('carrinhos').style.display=\"block\";\n");
      out.write("                    document.getElementById('tabuleiros').style.display=\"block\";\n");
      out.write("                    document.getElementById('praia').style.display=\"block\";\n");
      out.write("                    break\n");
      out.write("                \n");
      out.write("                } \n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
