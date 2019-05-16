<%-- 
    Document   : Settings
    Created on : 10/05/2019, 12:19:06 PM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/SettingsStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/MainPageStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
        <title>JSP Page</title>
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
                        <form>
                            <button class="btnProfile">
                                Actualizar Informaci&oacute;n <img src="Pictures/xdUpdate.png">
                            </button>
                        </form>
                        <form>
                            <button class="btnProfile">
                                Subir Archivos <img src="Pictures/xdUpload.png">
                            </button>
                        </form>
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

                <section id="sectSettings1">
                    <section id="sectSettings1">
                        <section id="sectSettings1-1">
                            <section id="sect2-211">
                                <label>Configuraci&oacute;n</label>
                            </section>
                            <section>
                                <div class="btnSelector">
                                    <form>
                                        <button class="botones" id="btn1">Cambiar Foto de Perfil</button>
                                        <button class="botones" id="btn2">Privacidad</button>
                                    </form>
                                </div>
                                <section id="sectSettings1-1" class="informacion2">
                                    <section id="sectSet1">
                                        <h3>Cambiar Foto de Perfil</h3>
                                        <button><img src="Pictures/xdArrowMenu.png"></button>
                                    </section>
                                    <section id="sectSettings1-12">
                                        <section id="sectSettings1-121">
                                            <section>
                                                <img class="imgUser" src="Pictures/xdProfile.png">
                                            </section>
                                        </section>
                                        <section id="sectSettings1-122">
                                            <section>
                                                <form>
                                                    <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdDelete.png"></button>
                                                </form>
                                                <h4>Borrar</h4>
                                            </section>
                                            <section>
                                                <form>
                                                    <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdUploadPC.png"></button>
                                                </form>
                                                <h4>Cargar desde el Computador</h4>
                                            </section>
                                            <section>
                                                <form>
                                                    <button class="icons" onclick="uploadFile('ja-image--doc1')" type="button"><img src="Pictures/xdUploadURL.png"></button>
                                                </form>
                                                <h4>Cargar desde Internet</h4>
                                            </section>   
                                        </section>
                                    </section>
                                </section>
                                <section id="sectSettings2-1" class="informacion2">
                                    <section id="sectSet1">
                                        <h3>Privacidad</h3>
                                        <button><img src="Pictures/xdArrowMenu.png"></button>
                                    </section>
                                    <section id="sectSettings2-12">

                                        <section class="sectSettings2-121">
                                            <form action="#">
                                                <h3>Cambiar Contraseña</h3>
                                                <input type="text" name="Password" placeholder="Contraseña Actual" />
                                                <input type="text" name="NewPassword" placeholder="Contraseña Nueva" />
                                                <input type="text" name="NewPasswordR" placeholder="Repetir Contraseña Nueva" />
                                                <button>Confirmar Cambios</button>
                                                <button>Cancelar</button>
                                            </form>
                                        </section>

                                        <section class="sectSettings2-121">
                                            <form>
                                                <h3>Numero de Telefono</h3>
                                                <input type="text" name="Telephone" placeholder="##" />
                                                <!-- Colocar boton para editar el numero actual  -->
                                                <h3>Correo Electronico</h3>
                                                <input type="text" name="Telephone" placeholder="##" />
                                                <button>Confirmar</button>
                                            </form>
                                        </section>

                                        <section class="sectSettings2-121">
                                            <form>
                                                <h3>Carreras</h3>
                                                <input type="text" name="Career" placeholder="##" Disabled/>
                                                <!-- Colocar boton para editar el numero actual  -->
                                                <button>Confirmar</button>
                                            </form>
                                        </section>
                                    </section>
                                </section>
                            </section>
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
    </body>

</html>