package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link type=\"text/css\" href=\"../CSS/LoginStyles.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <header>\n");
      out.write("        <img src=\"../Pictures/sibateLogo.png\" width=\"100%\" alt=\"SibateLogo\">\n");
      out.write("    </header>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"globalSect\">\n");
      out.write("            <section>\n");
      out.write("                <h2>Ingresar a perfil</h2>\n");
      out.write("                <form action=\"MainPage.jsp\">\n");
      out.write("                    <p>Documento de Identidad</p>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <input id=\"loginForm\" name=\"Usuario\" placeholder=\"Ingrese documento de Identidad\"/>\n");
      out.write("                    <br><br>\n");
      out.write("                    <p>Contrase&ntilde;a</p>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <input id=\"loginForm\" name=\"Contrasena\" placeholder=\"Ingrese su Contraseña\"/>\n");
      out.write("                    <br><br>\n");
      out.write("                    <button id=\"btnLogin\" value=\"Ingresar\" name=\"Ingresar\">Ingresar</button>\n");
      out.write("                    <br><br>\n");
      out.write("                    <input type=\"checkbox\"/><a>Guardar Sesi&oacute;n</a> || <a>Olvidaste tu Contraseña</a>\n");
      out.write("                </form>\n");
      out.write("            </section>\n");
      out.write("            <section>\n");
      out.write("                <h2>¿De que Consiste el Programa?</h2>\n");
      out.write("                <p>El programa de mejores bachilleres consiste en otorgar el beneficio académico anualmente a los \n");
      out.write("                    veinte (20) mejores estudiantes del municipio de Sibaté, que hayan terminado el grado once (11)\n");
      out.write("                    y hayan obtenido los mejores puntajes en las pruebas realizadas por el ICFES y que estén\n");
      out.write("                    calificados en el SISBEN III en el rango que aplique para nivel 1,2,3 y su finalidad será financiar la \n");
      out.write("                    educación superior Universitaria a nivel pregrado en una universidad ubicada en el territorio \n");
      out.write("                    Nacional.\n");
      out.write("                </p>\n");
      out.write("            </section>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
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
