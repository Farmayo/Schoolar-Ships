<%-- 
    Document   : Register
    Created on : 4/05/2019, 09:39:21 PM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/RegisterStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
    </head>
    <header>
        <img src="Pictures/sibateLogo.png" width="100%" alt="SibateLogo">
    </header>
    <body>
        <section class="globalSect">
            <form action="Login.jsp" method="post" enctype="multipart/form-data">
                <section id="formRegister">
                    <h2>Datos personales aspirante </h2>
                    <section>
                        <input id="loginForm" name="Nombre" placeholder="Nombre"/><label>*</label>
                        <br><br>                    
                        <input id="loginForm" name="Documento" placeholder="Documento de Identidad"/><label>*</label>
                        <br>
                        <h4>Fecha de Nacimiento:<label>*</label></h4>
                        <input id="loginForm" type="date "name="Fecha"/>
                        <br>
                        <label>Hombre</label>
                        <input type="radio" name="sexo" value="Hombre"/>
                        <label>Mujer</label>
                        <input type="radio" name="sexo" value="Mujer"/>
                        <label>*</label>
                    </section>
                    <br>
                    <section>
                        <input id="loginForm" name="Nombre" placeholder="Nombre"/>
                        <br><br>                    
                        <input id="loginForm" name="Documento" placeholder="Ingrese su Contraseña"/>
                        <br><br>
                        <input id="loginForm" name="Usuario" placeholder="Ingrese documento de Identidad"/>
                        <br><br>                    
                        <input id="loginForm" name="Contrasena" placeholder="Ingrese su Contraseña"/>
                        <br>
                    </section>

                </section>
                <section id="archivosSect">
                    <label>Certificación de Residencia en el Municipio</label>
                    <input type="file" name="certificacionAccionComunal" accept=".pdf" /><br><br>
                    <label>Resultados Prueba Saber 11</label>
                    <input type="file" name="Icfes" accept=".pdf" /><br><br>
                    <label>Carta del Sisben</label>
                    <input type="file" name="Sisben" accept=".pdf" /><br><br>
                    <label>Actas de Grado</label>
                    <input type="file" name="ActaGrado" accept=".pdf" /><br><br>
                    <label>Diploma de Grado</label>
                    <input type="file" name="DiplomaGrado" accept=".pdf" /><br><br>
                    <br><br>
                    <label>Nota: Los archivos deben ser adjuntados en formato PDF</label>
                    <br><br>
                    <button id="btnRegister" value="Postular" name="Postular">Postularse</button>
                    <br><br>
                </section>
            </form>
            <form action="Login.jsp">
                <button id="btnRegister" value="Cancelar" name="Cancelar">Cancelar</button>
            </form>
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
