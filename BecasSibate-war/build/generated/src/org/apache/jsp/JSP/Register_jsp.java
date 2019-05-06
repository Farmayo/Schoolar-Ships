package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link type=\"text/css\" href=\"../CSS/RegisterStyles.css\" rel=\"stylesheet\">\n");
      out.write("        <link type=\"text/css\" href=\"../CSS/Footer_Header.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"globalSect\">\n");
      out.write("            <form action=\"Login.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                <section id=\"formRegister\">\n");
      out.write("                    <h2>Datos personales aspirante </h2>\n");
      out.write("                    <section>\n");
      out.write("                        <input id=\"loginForm\" name=\"Nombre\" placeholder=\"Nombre\"/><label>*</label>\n");
      out.write("                        <br><br>                    \n");
      out.write("                        <input id=\"loginForm\" name=\"Documento\" placeholder=\"Documento de Identidad\"/><label>*</label>\n");
      out.write("                        <br>\n");
      out.write("                        <h4>Fecha de Nacimiento:<label>*</label></h4>\n");
      out.write("                        <input id=\"loginForm\" type=\"date \"name=\"Fecha\"/>\n");
      out.write("                        <br>\n");
      out.write("                        <label>Hombre</label>\n");
      out.write("                        <input type=\"radio\" name=\"sexo\" value=\"Hombre\"/>\n");
      out.write("                        <label>Mujer</label>\n");
      out.write("                        <input type=\"radio\" name=\"sexo\" value=\"Mujer\"/>\n");
      out.write("                        <label>*</label>\n");
      out.write("                    </section>\n");
      out.write("                    <br>\n");
      out.write("                    <section>\n");
      out.write("                        <input id=\"loginForm\" name=\"Nombre\" placeholder=\"Nombre\"/>\n");
      out.write("                        <br><br>                    \n");
      out.write("                        <input id=\"loginForm\" name=\"Documento\" placeholder=\"Ingrese su Contraseña\"/>\n");
      out.write("                        <br><br>\n");
      out.write("                        <input id=\"loginForm\" name=\"Usuario\" placeholder=\"Ingrese documento de Identidad\"/>\n");
      out.write("                        <br><br>                    \n");
      out.write("                        <input id=\"loginForm\" name=\"Contrasena\" placeholder=\"Ingrese su Contraseña\"/>\n");
      out.write("                        <br>\n");
      out.write("                    </section>\n");
      out.write("\n");
      out.write("                </section>\n");
      out.write("                <section id=\"archivosSect\">\n");
      out.write("                    <label>Certificación de Residencia en el Municipio</label>\n");
      out.write("                    <input type=\"file\" name=\"certificacionAccionComunal\" accept=\".pdf\" /><br><br>\n");
      out.write("                    <label>Resultados Prueba Saber 11</label>\n");
      out.write("                    <input type=\"file\" name=\"Icfes\" accept=\".pdf\" /><br><br>\n");
      out.write("                    <label>Carta del Sisben</label>\n");
      out.write("                    <input type=\"file\" name=\"Sisben\" accept=\".pdf\" /><br><br>\n");
      out.write("                    <label>Actas de Grado</label>\n");
      out.write("                    <input type=\"file\" name=\"ActaGrado\" accept=\".pdf\" /><br><br>\n");
      out.write("                    <label>Diploma de Grado</label>\n");
      out.write("                    <input type=\"file\" name=\"DiplomaGrado\" accept=\".pdf\" /><br><br>\n");
      out.write("                    <br><br>\n");
      out.write("                    <label>Nota: Los archivos deben ser adjuntados en formato PDF</label>\n");
      out.write("                    <br><br>\n");
      out.write("                    <button id=\"btnRegister\" value=\"Postular\" name=\"Postular\">Postularse</button>\n");
      out.write("                    <br><br>\n");
      out.write("                </section>\n");
      out.write("            </form>\n");
      out.write("            <form action=\"Login.jsp\">\n");
      out.write("                <button id=\"btnRegister\" value=\"Cancelar\" name=\"Cancelar\">Cancelar</button>\n");
      out.write("            </form>\n");
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
