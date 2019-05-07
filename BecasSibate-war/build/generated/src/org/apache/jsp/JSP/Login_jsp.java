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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link type=\"text/css\" href=\"../CSS/LoginStyles.css\" rel=\"stylesheet\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <header>\r\n");
      out.write("        <img src=\"../Pictures/sibateLogo.png\" width=\"100%\" alt=\"SibateLogo\">\r\n");
      out.write("    </header>\r\n");
      out.write("    <body>\r\n");
      out.write("        <section class=\"globalSect\">\r\n");
      out.write("            <section id=\"formSect\">\r\n");
      out.write("                <h2>Ingresar a perfil</h2>\r\n");
      out.write("                <form action=\"MainPage.jsp\">\r\n");
      out.write("                    <p>Documento de Identidad</p>\r\n");
      out.write("                    <img src=\"../Pictures/IconUserLogin.png\">\r\n");
      out.write("                    <input id=\"loginForm\" name=\"Usuario\" placeholder=\"Ingrese documento de Identidad\"/>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <p>Contrase&ntilde;a</p>\r\n");
      out.write("                    <img src=\"../Pictures/IconPassLogin.png\">\r\n");
      out.write("                    <input id=\"loginForm\" name=\"Contrasena\" placeholder=\"Ingrese su Contraseña\"/>\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <button id=\"btnLogin\" value=\"Ingresar\" name=\"Ingresar\">Ingresar</button>\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <input type=\"checkbox\"/><a>Guardar Sesi&oacute;n</a> || <a>Olvidaste tu Contraseña</a>\r\n");
      out.write("                </form>\r\n");
      out.write("            </section>\r\n");
      out.write("            <section id=\"info-regSect\">\r\n");
      out.write("                <section id=\"infoSect\">\r\n");
      out.write("                    <form>\r\n");
      out.write("                        <h2>¿De que Consiste el Programa?</h2>\r\n");
      out.write("                        <p>El programa de mejores bachilleres consiste en otorgar el beneficio académico anualmente a los \r\n");
      out.write("                            veinte (20) mejores estudiantes del municipio de Sibaté, que hayan terminado el grado once (11)\r\n");
      out.write("                            y hayan obtenido los mejores puntajes en las pruebas realizadas por el ICFES y que estén\r\n");
      out.write("                            calificados en el SISBEN III en el rango que aplique para nivel 1,2,3 y su finalidad será financiar la \r\n");
      out.write("                            educación superior Universitaria a nivel pregrado en una universidad ubicada en el territorio \r\n");
      out.write("                            Nacional.\r\n");
      out.write("                        </p>\r\n");
      out.write("                        <button id=\"btnInfo\" value=\"SolicitarInfo\" name=\"SolicitarInfo\">Solicitar Informaci&oacute;n</button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </section>\r\n");
      out.write("                <section id=\"regSect\">\r\n");
      out.write("                    <form action=\"Register.jsp\">\r\n");
      out.write("                        <h2>Requisitos</h2>\r\n");
      out.write("                        <p>Para postularse para una de estas becas se deben presentar los siguientes documentos:</p>\r\n");
      out.write("                        <p>Documento de Identidad</p>\r\n");
      out.write("                        <p>Certificación Junta de Acci&oacute;n Comunal</p>\r\n");
      out.write("                        <p>Resultado prueba de estado Saber 11</p>\r\n");
      out.write("                        <p>Acta de Grado</p>\r\n");
      out.write("                        <p>Diploma de grado</p>\r\n");
      out.write("                        <button id=\"btnInfo\" value=\"Postular\" name=\"Postular\">Postularse</button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </section>\r\n");
      out.write("            </section>\r\n");
      out.write("        </section>\r\n");
      out.write("    </body>\r\n");
      out.write("    <footer>\r\n");
      out.write("        <section id=\"footerSect\">\r\n");
      out.write("            <section>Siguenos en nuestras redes sociales</section>\r\n");
      out.write("            <section><a href=\"#\">Instagram <img src=\"\"></a></section>\r\n");
      out.write("            <section><a href=\"#\">Faceboook <img src=\"\"></a></section>\r\n");
      out.write("            <section><a href=\"#\">Twitter <img src=\"\"></a></section>\r\n");
      out.write("            <section><a href=\"#\">YouTube <img src=\"\"></a></section>\r\n");
      out.write("            <section><a href=\"#\">Elaborado por Didacticos CSJ</a></section>            \r\n");
      out.write("        </section>\r\n");
      out.write("    </footer>\r\n");
      out.write("</html>\r\n");
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
