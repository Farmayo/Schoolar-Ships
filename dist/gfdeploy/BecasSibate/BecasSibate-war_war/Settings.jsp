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
                    <label>Alcaldia de Sibat&eacute;</label>
                </section>
                <section id="sect1-3">
                    <section>
                        <form>
                            <button class="icons"><img src="Pictures/Configuracion.png"></button>
                        </form>
                    </section>
                    <section>
                        <form>
                            <button class="icons" id="btnExit"><img src="Pictures/IconExitWhite.png"></button>
                        </form>
                    </section>
                </section>
            </section>

            <section id="sect2">
                <section id="sect2-1">
                    <section id="sect2-11">
                        <img class="imgUser" src="Pictures/IconUserLogin.png">
                        <h4 class="textInfo">Nombre Completo</h4>
                        <h5 class="textInfo">Carrera</h5>
                        <h6 class="textInfo">Universidad ECCI</h6>
                    </section>
                    <section id="sect2-12">
                        <form>
                            <button class="btnProfile">Actualizar Informaci&oacute;n</button>
                        </form>
                        <form>
                            <button class="btnProfile">Subir Archivos</button>
                        </form>
                        <form action="Settings.jsp">
                            <button class="btnProfile">Configuraci&oacute;n</button>
                        </form>
                    </section>
                </section>

                <section id="sectSettings1">
                    <section id="sectSettings1-1">
                        <section id="sectSettings1-11">
                            <h2>Cambiar Foto de Perfil</h2>
                        </section>
                        <section id="sectSettings1-12">
                            <section id="sectSettings1-121">
                                <section>
                                    <img class="imgUser" src="Pictures/IconUserLogin.png">
                                </section>
                            </section>
                            <section id="sectSettings1-122">
                                <section>
                                    <form>
                                        <button class="icons"><img src="Pictures/deleteIcon.png"></button>
                                    </form>
                                    <h4>Borrar</h4>
                                </section>
                                <section>
                                    <form>
                                        <button class="icons"><img src="Pictures/uploadFiles.png"></button>
                                    </form>
                                    <h4>Cargar desde el Computador</h4>
                                </section>
                                <section>
                                    <form>
                                        <button class="icons"><img src="Pictures/uploadURL.png"></button>
                                    </form>
                                    <h4>Cargar desde una URL</h4>
                                </section>   
                            </section>
                        </section>
                    </section>

                    <section id="sectSettings2">
                        <section id="sectSettings2-1">
                            <section id="sectSettings2-11">
                                <h2>Privacidad</h2>
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


                    <section id="sectSettings3">
                        <section id="sectSettings3-1">
                            <section id="sectSettings3-11">
                                <h2>Privacidad</h2>
                            </section>
                            <section id="sectSettings3-12">
                                <form action="#">
                                    <section id="sectSettings3-121">
                                        <h3>Cambiar Nombre de Usuario</h3>
                                        <input type="text" name="Username" placeholder="Nuevo Nombre de Usuario" />
                                        <h3>Cambiar Contraseña</h3>
                                        <input type="text" name="Password" placeholder="Contraseña Actual" />
                                        <input type="text" name="NewPassword" placeholder="Contraseña Nueva" />
                                        <input type="text" name="NewPasswordR" placeholder="Repetir Contraseña Nueva" />
                                        <button>Confirmar Cambios</button>
                                        <button>Cancelar</button>
                                    </section>
                                    <section id="sectSettings3-122">
                                        <h3>Cambiar Numero de Telefono</h3>


                                    </section>
                                </form>
                            </section>
                        </section>
                    </section>
                </section>
            </section>
        </section>
        <footer>
            <section id="footerSect">
                <section>Siguenos en Nuestras Redes Sociales</section>
                <section><a href="#">Instagram <img src="Pictures/instagramLogo.png"></a></section>
                <section><a href="#">Faceboook <img src="Pictures/facebookLogo.png"></a></section>
                <section><a href="#">Twitter <img src="Pictures/twitterLogo.png"></a></section>
                <section><a href="#">YouTube <img src="Pictures/youtubeLogo.png"></a></section>
                <section><a href="#">Desarrollado por Didacticos CSJ</a></section>            
            </section>
        </footer>
    </body>

</html>