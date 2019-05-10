<%-- 
    Document   : Login
    Created on : 4/05/2019, 06:27:16 PM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/LoginStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
    </head>
    <header>
        <img src="Pictures/sibateLogo.png" width="100%" alt="SibateLogo">
    </header>
    <body>
        <section class="globalSect">
            <section id="formSect">
                <h2>Ingresar a perfil</h2>
                <form action="MainPage.jsp">
                    <p>Documento de Identidad</p>
                    <img src="Pictures/IconUserLogin.png">
                    <input id="loginForm" name="Usuario" placeholder="Ingrese documento de Identidad"/>
                    <br>
                    <p>Contrase&ntilde;a</p>
                    <img src="Pictures/IconPassLogin.png">
                    <input id="loginForm" name="Contrasena" placeholder="Ingrese su Contraseña"/>
                    <br><br>
                    <button id="btnLogin" value="Ingresar" name="Ingresar">Ingresar</button>
                    <br><br>
                    <input type="checkbox"/><a>Guardar Sesi&oacute;n</a> || <a>Olvidaste tu Contraseña</a>
                </form>
            </section>
            <section id="info-regSect">
                <section id="infoSect">
                    <form>
                        <h2>¿De que Consiste el Programa?</h2>
                        <p>El programa de mejores bachilleres consiste en otorgar el beneficio académico anualmente a los 
                            veinte (20) mejores estudiantes del municipio de Sibaté, que hayan terminado el grado once (11)
                            y hayan obtenido los mejores puntajes en las pruebas realizadas por el ICFES y que estén
                            calificados en el SISBEN III en el rango que aplique para nivel 1,2,3 y su finalidad será financiar la 
                            educación superior Universitaria a nivel pregrado en una universidad ubicada en el territorio 
                            Nacional.
                        </p>
                        <button id="btnInfo" value="SolicitarInfo" name="SolicitarInfo">Solicitar Informaci&oacute;n</button>
                    </form>
                </section>
                <section id="regSect">
                    <form action="Register.jsp">
                        <h2>Requisitos</h2>
                        <p>Para postularse para una de estas becas se deben presentar los siguientes documentos:</p>
                        <p>Documento de Identidad</p>
                        <p>Certificación Junta de Acci&oacute;n Comunal</p>
                        <p>Resultado prueba de estado Saber 11</p>
                        <p>Acta de Grado</p>
                        <p>Diploma de grado</p>
                        <button id="btnInfo" value="Postular" name="Postular">Postularse</button>
                    </form>
                </section>
            </section>
        </section>
    </body>
    <footer>
        <section id="footerSect">
            <section>Siguenos en nuestras redes sociales</section>
            <section><a href="#">Instagram <img src="Pictures/instagramLogo.png"></a></section>
            <section><a href="#">Faceboook <img src="Pictures/facebookLogo.png"></a></section>
            <section><a href="#">Twitter <img src="Pictures/twitterLogo.png"></a></section>
            <section><a href="#">YouTube <img src="Pictures/youtubeLogo.png"></a></section>
            <section><a href="#">Elaborado por Didacticos CSJ</a></section>            
        </section>
    </footer>
</html>
