<%-- 
    Document   : MainPage
    Created on : 5/05/2019, 05:56:21 PM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
        <link type="text/css" href="CSS/MainPageStyles.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="globalSect">
            <section id="sect1">
                <section>
                    <h1>Alcaldia de Sibate</h1>
                </section>
                <section>
                    <form>
                        <input type="search" placeholder="Buscar"/>
                        <input type="submit" value="&#10140;"/>
                    </form>
                </section>
                <section>
                    <a id="icons" href="#"><img src="Pictures/Notificaciones.png"></a>
                </section>
                <section>
                    <a id="icons" href="#"><img src="Pictures/Configuracion.png"></a>
                </section>
                <section id="sectExit">
                    <a id="icons" href="#"><h1>Salir</h1><img src="Pictures/IconExitWhite.png"></a>
                </section>
            </section>

            <section id="sectMainPage">
                <section id="sect2">
                    <section id="sectPerfil">
                        <label>Imagen aqui</label>
                        <h4>Nombre Completo</h4>
                        <h5>Carrera</h5>
                        <h6>Universidad ECCI</h6>
                    </section>
                    <section>
                        <a href="#"><label>Actualizar Informaci&oacute;n</label></a>
                        <a href="#"><label>Cargar Archivos</label></a>
                        <a href="#"><label>Ajustes</label></a>
                    </section>
                </section>

                <section id="sect3">
                    <section id="sectInfo">
                        <section>
                            <label>INFO</label>
                            <br>
                            <label>__________________________</label>
                        </section>
                        <section id="menu">
                            <section>
                                <a><label>Semestres</label></a>
                            </section>
                            <section>
                                <a><label>Solicitudes Comite Tecnico</label></a>
                            </section>
                            <section>
                                <a><label>Cuentas de Cobro</label></a>
                            </section>
                        </section>
                    </section>
                    <section id="sectInformacion">
                        <section>
                            <label>Semestre Actual</label>
                        </section>
                        <section>
                            <section>
                                <label>Informacion</label>
                            </section>
                            <section>
                                <h4>Solicitudes en Proceso</h4>
                                <label>Informacion</label>
                            </section>
                        </section>
                    </section>
                </section>

            </section>
        </section>
    </body>
    <footer>
        <section id="footerSect">
            <section>Siguenos en nuestras redes sociales</section>
            <section><a href="#">Instagram <img src=""></a></section>
            <section><a href="#">Faceboook <img src=""></a></section>
            <section><a href="#">Twitter <img src=""></a></section>
            <section><a href="#">YouTube <img src=""></a></section>
            <section><a href="#">Elaborado por Didacticos CSJ</a></section>            
        </section>
    </footer>
</html>
