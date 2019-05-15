<%-- 
    Document   : Register
    Created on : 4/05/2019, 09:39:21 PM
    Author     : farma
--%>

<%@page import="DataControl.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/RegisterStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/global.css" rel="stylesheet">
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
    </head>
    <body>
        <header>
            <div class="ja-container--h">
                <div class="ja-container--h11">
                    <img src="Pictures/Escudo-Municipio.png"
                         alt="Logo municipio de Sibaté" title="Logo municipio de Sibaté">
                </div>
                <div class="col ja-container--h12">
                    <div>
                        <h1>Becas Mejores Bachilleres</h1>
                        <h3>Alcald&iacute;a de Sibat&eacute;</h3>
                    </div>
                    <div>
                        <img src="Pictures/baseline-collections_bookmark-24px.png" alt="bookmark" title="bookmark">
                    </div>
                </div>
            </div>
        </header>
        <%@page import="Controller.ControlRegister" %>
        <% Data control = Data.getInstance(); %>
        <form action="ControlRegister" method="POST">
            <section class="ja-container--b">
            <div class="ja-container--b11">
                <div class="ja-container--b111">
                    <a href="http://www.sibate-cundinamarca.gov.co/Paginas/default.aspx">
                        Ir a la p&aacute;gina oficial de la alcald&iacute;a municipal de Sibat&eacute;
                    </a>
                    <img src="Pictures/Imagen_18_A6_Rectangle_23_pattern.png">
                </div>
                <div class="ja-container--b112">
                    <img src="Pictures/Imagen_10_A6_Rectangle_20_pattern.png">
                    <h2>Datos personales aspirante</h2>
                    <% if(control.getUserStudent() != null) {%>
                        <p class="ja-alert">* Problemas al registrar usuario, por favor vuelva a
                            diligenciar el formulario o contactese con el administrador</p> 
                    <%}%>
                    <div>
                    </div>
                    <div class="form">
                        <div>
                            <div class="ja-input-important">
                                <input placeholder="Nombres" name="name" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input-important">
                                <input placeholder="Documento de identidad" name="doc" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input-important">
                                <input placeholder="Edad" name="age" type="number" required=""> <p class="ja-important">*</p>
                            </div>
                        </div>
                        <div>
                            <div class="ja-input-important">
                                <input placeholder="Apellidos" name="lastname" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input-important">
                                <input placeholder="Correo" name="email" type="email" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input-important">
                                <input placeholder="Contraseña" name="password1" type="password" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input-important">
                                <input placeholder="Confirmar Contraseña" name="password2" type="password" required=""> <p class="ja-important">*</p>
                            </div>
                            <div class="ja-input--doc1">
                                <h5>
                                    Documento de identidad aspirante
                                </h5>
                                <button onclick="uploadFile('ja-image--doc1')" type="button">
                                    <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                                </button>
                            </div>
                            <p class="ja-file--loaded" id="ja-file--loaded"></p>
                        </div>
                        <span class="ja-fill--gaps">Los campos marcados con (<p class="ja-important">*</p>)son obligatorios</span>
                    </div>
                </div>
            </div>
            <div class="ja-container--b12">
                <h2>Archivos requeridos</h2>
                <img src="Pictures/Imagen_9_A6_Rectangle_18_pattern.png">
                <div>
                    <div></div>
                </div>
                <div class="ja-container--b12A">
                    <div class="ja-container--b121">
                        <div class="ja-input--doc1">
                            <h5>
                                Documento de identidad aspirante
                            </h5>
                            <button onclick="uploadFile('ja-image--doc1')" type="button">
                                <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                            </button>
                        </div>
                    </div>
                    <div class="ja-container--b122">
                        <div class="ja-input--doc1">
                            <h5>
                                Documento de identidad aspirante
                            </h5>
                            <button onclick="uploadFile('ja-image--doc1')" type="button">
                                <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                            </button>
                        </div>
                        <div class="ja-input--doc1">
                            <h5>
                                Documento de identidad aspirante
                            </h5>
                            <button onclick="uploadFile('ja-image--doc1')" type="button">
                                <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                            </button>
                        </div>
                    </div>
                    <div class="ja-container--b123">
                        <div class="ja-input--doc1">
                            <h5>
                                Documento de identidad aspirante
                            </h5>
                            <button onclick="uploadFile('ja-image--doc1')" type="button">
                                <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                            </button>
                        </div>
                        <div class="ja-input--doc1">
                            <h5>
                                Documento de identidad aspirante
                            </h5>
                            <button onclick="uploadFile('ja-image--doc1')" type="button">
                                <img src="Pictures/baseline-cloud_upload-24px.png" id="ja-image--doc1">
                            </button>
                        </div>
                    </div>
                    <div class="ja-container--b124">
                        <div>
                            <input type="radio">
                            <label>
                                Aceptas nuestras Condiciones, la Política de datos 
                                y la Política de cookies. Es posible que te enviemos 
                                notificaciones por SMS, que puedes desactivar 
                                cuando quieras.
                            </label>
                        </div>
                        <div>
                            <button>Enviar</button>
                            <button>Cancelar</button>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        </form>
                
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
        <script src="JS/register.js">
            
        </script>
    </body>
</html>