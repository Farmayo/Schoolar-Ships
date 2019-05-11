<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="../CSS/LoginStyles.css" rel="stylesheet">
        <link type="text/css" href="../CSS/RegisterStyles.css" rel="stylesheet">
    </head>
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
</html>