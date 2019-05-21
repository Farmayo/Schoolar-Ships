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
        <link type="text/css" href="CSS/Setting2Styles.css" rel="stylesheet">
        <link rel="stylesheet" href="CSS/global.css" type="text/css">
        <title>Main Page</title>
    </head>
    <body onload="btnShow(1)">
        <section id="globalSect">
            <section id="sect1">
                <section id="sect1-1">
                    <form action="MainPage.jsp">
                        <button id="titulo"><img src="Pictures/xdHome.png">Alcald&iacute;a de Sibat&eacute</button>
                    </form>
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
                        <form>
                            <button class="btnProfile" onclick="btnShow(0)" type="button">
                                P&aacute;gina Principal<img src="Pictures/xdHome.png">
                            </button>
                            <button class="btnProfile" onclick="btnShow(1)" type="button">
                                Configuraci&oacute;n <img src="Pictures/xdConfig.png">
                            </button>

                        </form>
                    </section>
                    <div>
                        <p>Elaborado por Didacticos CSJ</p>
                    </div>
                </section>

                <section id="sect2-2" class="contenedor">
                    <section id="sect2-21">
                        <section id="sect2-211">
                            <label id="title">INFO</label>
                        </section>
                        <section id="sect2-212">
                            <div class="btnSelector">
                                <form id="menuForm">
                                    <button class="botones" id="btn1" onclick="mostrar(1)" type="button">Semestre Actual</button>
                                    <button class="botones" id="btn2" onclick="mostrar(2)" type="button">Semestres</button>
                                    <button class="botones" id="btn3" onclick="mostrar(3)" type="button">Cuentas de Cobro</button>
                                    <button class="botones" id="btn4" onclick="mostrar(4)" type="button">
                                        Solicitudes Comit&eacute; Tecnico</button>
                                </form>
                            </div>
                            <div class="informacion" id="infoMain1">
                                <section>
                                    <h3>Semestre Actual</h3>
                                    <button id="btnCerrar" onclick="hide()"><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain2">
                                <section>
                                    <h3>Semestres</h3>
                                    <button id="btnCerrar" onclick="hide()"><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain3">
                                <section>
                                    <h3>Cuentas de Cobro</h3>
                                    <button id="btnCerrar" onclick="hide()"><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>

                            <div class="informacion" id="infoMain4">
                                <section>
                                    <h3>Solicitudes Comit&eacute; Tecnico</h3>
                                    <button id="btnCerrar" onclick="hide()"><img src="Pictures/xdArrowMenu.png"></button>
                                </section>
                                <div>
                                    <h1>Caracteristicas actualmente NO disponibles</h1>
                                </div>
                            </div>
                        </section>
                    </section>
                </section>

                <section id="setSect1" class="contenedor">
                    <section id="setSect1-1">
                        <label id="title">Configuraci&oacute;n</label>
                    </section>
                    <section id="setSect1-2">
                        <div class="btnSelector">
                            <button class="botones" id="btn1" onclick="mostrar2(1)">Cambiar Foto de Perfil</button>
                            <button class="botones" id="btn2" onclick="mostrar2(2)">Privacidad</button>
                        </div>

                        <div class="informacion2" id="infoSet1">
                            <section id="infoSet1-1">
                                <h3>Cambiar Foto de Perfil</h3>
                                <button id="btnCerrar" onclick="hide2()"><img src="Pictures/xdArrowMenu.png"></button>
                            </section>
                            <div id="infoSet1-2">
                                <section id="infoSet1-21">
                                    <section id="infoSet1-211">
                                        <img class="imgUser" src="Pictures/xdProfile.png">
                                    </section>
                                    <section id="infoSet1-212">
                                        <section>
                                            <form>
                                                <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdDelete.png"></button>
                                                <h4>Borrar</h4>
                                            </form>
                                        </section>
                                        <section>
                                            <form>
                                                <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdUploadPC.png"></button>
                                                <h4>Cargar desde el Computador</h4>
                                            </form>
                                        </section>
                                        <section>
                                            <form>
                                                <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdUploadURL.png"></button>
                                                <h4>Cargar desde Internet</h4>
                                            </form>
                                        </section>
                                    </section>
                                </section> 
                            </div>
                        </div>
                        <div class="informacion2" id="infoSet2">
                            <section id="infoSet1-1">
                                <h3>Privacidad</h3>
                                <button id="btnCerrar" onclick="hide2()"><img src="Pictures/xdArrowMenu.png"></button>
                            </section>
                            <section id="infoSet1-2">
                                <section class="infoPrivacidad">
                                    <h3>Cambiar Contraseña</h3>
                                    <section>
                                        <input class="inpText" type="text" name="Password" placeholder="Contraseña Actual" disabled="true"/>
                                        <input class="inpText" type="text" name="NewPassword" placeholder="Contraseña Nueva" disabled="true"/>
                                        <input class="inpText" type="text" name="NewPasswordR" placeholder="Repetir Contraseña Nueva" disabled="true"/>                                   
                                    </section>
                                    <h3>Numero de Telefono</h3>
                                    <section>
                                        <input class="inpText" type="text" name="Telephone" placeholder="##" disabled="true"/>
                                    </section>
                                    <h3>Correo Electronico</h3>
                                    <section>
                                        <input class="inpText" type="text" name="Email" placeholder="##" disabled="true"/>
                                    </section>
                                    <h3>Carreras</h3>
                                    <section>
                                        <input class="inpText" type="text" name="Career" placeholder="##" disabled="true"/>
                                    </section>
                                    <button class="btnPrivacidad" onclick="setEnabled(0)">Editar</button>
                                    <button class="btnPrivacidad" onclick="setDisabled(0)">Confirmar</button>
                                    <button class="btnCancelar">Cancelar</button>
                                </section>
                            </section>
                        </div>
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

        <script src="JS/register.js"></script>
        <script src="JS/MainPage.js" type="text/javascript"></script>
    </body>
</html>