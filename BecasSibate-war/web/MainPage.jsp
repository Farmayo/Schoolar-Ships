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
        <link type="text/css" href="CSS/MainPageStyles.css" rel="stylesheet">
        <title>Main Page</title>
    </head>
    <body>
        <section id="globalSect">
            <section id="sect1">
                <section id="sect1-1">
                    <label id="titulo">Alcald&iacute;a de Sibat&eacute</label>
                </section>
                <section id="sect1-3">
                    <form>
                        <button id="btnSettings"><img src="Pictures/xdConfig2.png"></button>
                    </form>
                    <form>
                        <button id="btnExit">Salir<img src="Pictures/xdExit.png"></button>
                    </form>
                </section>
            </section>

            <section id="sect2">
                <section id="sect2-1">
                    <section id="sect2-11">
                        <img class="imgUser" src="Pictures/xdProfile.png">
                        <h4 class="textInfo">Nombre Completo</h4>
                        <h5 class="textInfo">Carrera</h5>
                        <h6 class="textInfo">Universidad ECCI</h6>
                    </section>
                    <section id="sect2-12">
                        <form action="Settings.jsp">
                            <button class="btnProfile">
                                Configuraci&oacute;n <img src="Pictures/xdConfig.png">
                            </button>
                        </form>
                    </section>
                    <div>
                        <p>Elaborado por Didacticos CSJ</p>
                    </div>
                </section>

                <section id="sect2-2">
                    <section id="sect2-21">
                        <section id="sect2-211">
                            <label>INFO</label>
                        </section>
                        <section id="sect2-212">
                            <div class="btnSelector">
                                <form id="menuForm">
                                    <button class="botones" id="btn1" onclick="Mostrar('infoMain1')">Semestre Actual</button>
                                    <button class="botones" id="btn2" onclick="Mostrar('infoMain2')">Semestres</button>
                                    <button class="botones" id="btn3" onclick="Mostrar('infoMain3')">Cuentas de Cobro</button>
                                    <button class="botones" id="btn4" onclick="Mostrar('infoMain4')" type="button" onclick="mostrar()">
                                        Solicitudes Comit&eacute; Tecnico</button>
                                </form>
                            </div>
                            <div class="informacion" id="infoMain1" style="display:none">
                                <section>
                                    <h3>Semestre Actual</h3>
                                    <button><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain2" style="display:none;">
                                <section>
                                    <h3>Semestres</h3>
                                    <button><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain3" style="display:none;">
                                <section>
                                    <h3>Cuentas de Cobro</h3>
                                    <button><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain4" style="display:none;">
                                <section>
                                    <h3>Solicitudes Comit&eacute; Tecnico</h3>
                                    <button><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>
                        </section>
                    </section>
                </section>
            </section>
        </section>
        <footer>
            <div>Siguenos en nuestras </div>
            <div>
                <button>
                    <label>Instagram</label>
                    <img src="Pictures/instagramLogo.png">
                </button>
            </div>
            <div>
                <button>
                    <label>Facebook</label>
                    <img src="Pictures/facebookLogo.png">
                </button>
            </div>
            <div>
                <button>
                    <label>Twitter</label>
                    <img src="Pictures/twitterLogo.png">
                </button>
            </div>
            <div>
                <button>
                    <label>YouTube</label>
                    <img src="Pictures/youtubeLogo.png">
                </button>
            </div>
            <div>
                <strong>Elaborated by Didacticos CSJ</strong>
            </div>   
        </footer>

        <script src="JS/register.js">

        </script>
        <script src="JS/MainPage.js">

        </script>
    </body>
</html>