<%-- 
    Document   : Settings2
    Created on : 16/05/2019, 11:00:45 AM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/Setting2Styles.css" rel="stylesheet">
        <link type="text/css" href="CSS/MainPageStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
        <title>Settings</title>

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

                <section id="setSect1">
                    <section id="setSect1-1">
                        <label>Configuraci&oacute;n</label>
                    </section>
                    <section id="setSect1-2">
                        <div class="btnSelector">
                            <form>
                                <button class="botones" id="btn1">Cambiar Foto de Perfil</button>
                                <button class="botones" id="btn2">Privacidad</button>
                            </form>
                        </div>

                        <div class="informacion2" id="infoSet1">
                            <section id="infoSet1-1">
                                <h3>Cambiar Foto de Perfil</h3>
                                <button><img src="Pictures/xdArrowMenu.png"></button>
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
                                <button><img src="Pictures/xdArrowMenu.png"></button>
                            </section>
                            <section id="infoSet1-2">

                                <section class="infoPrivacidad">
                                    <h3>Cambiar Contraseña</h3>
                                    <section>
                                        <form>
                                            <input type="text" name="Password" placeholder="Contraseña Actual" disabled/>
                                            <input type="text" name="NewPassword" placeholder="Contraseña Nueva" disabled/>
                                            <input type="text" name="NewPasswordR" placeholder="Repetir Contraseña Nueva" disabled/>
                                            <button class="btnPrivacidad">Editar</button>
                                            <button class="btnPrivacidad" style="display:none;">Confirmar</button>
                                            <button class="btnPrivacidad" style="display:none;">Cancelar</button>
                                        </form>                                            
                                    </section>
                                </section>

                                <section class="infoPrivacidad">
                                    <h3>Numero de Telefono</h3>
                                    <section>
                                        <form>
                                            <input type="text" name="Telephone" placeholder="##" disabled/>
                                            <button class="btnPrivacidad">Editar</button>
                                            <button class="btnPrivacidad" style="display:none;">Confirmar</button>
                                            <button class="btnPrivacidad" style="display:none;">Cancelar</button>
                                        </form>
                                    </section>
                                    <h3>Correo Electronico</h3>
                                    <section>
                                        <form>
                                            <input type="text" name="Email" placeholder="##" disabled/>
                                            <button class="btnPrivacidad">Editar</button>
                                            <button class="btnPrivacidad" style="display:none;">Confirmar</button>
                                            <button class="btnPrivacidad" style="display:none;">Cancelar</button>
                                        </form>
                                    </section>
                                </section>

                                <section class="infoPrivacidad">
                                    <h3>Carreras</h3>
                                    <section>
                                        <form>
                                            <input type="text" name="Career" placeholder="##" disabled/>
                                            <button class="btnPrivacidad">Editar</button>
                                            <button class="btnPrivacidad" style="display:none;">Confirmar</button>
                                        </form>
                                    </section
                                </section>
                                <section>
                                    <form action="MainPage.jsp">
                                        <button class="btnCancelar">Cancelar</button>
                                    </form>
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

        <script src="JS/register.js">

        </script>
    </body>
</html>
