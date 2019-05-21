<%@page import="DataControl.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/LoginStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
        <link type="text/css" href="CSS/global.css" rel="stylesheet">
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
        <a href="http://www.sibate-cundinamarca.gov.co/Paginas/default.aspx">
            Ir a la p&aacute;gina oficial de la alcald&iacute;a municipal de Sibat&eacute;
        </a>
        <div class="ja-container--request hide" id="requestInfo">
            <form>
                <img src="Pictures/support.png">
                <img src="Pictures/error.png" onclick="closeRequest()">
                <h2>Enivanos tus inquietudes</h2>
                <input type="text" placeholder="Nombres" id="nameR">
                <input type="text" placeholder="Apellidos" id="lastnameR">
                <input type="email" placeholder="Email" id="emailR">
                <textarea rows="10" cols="35" placeholder="Escribe tus comentarios" id="commentR"></textarea>
                <button type="button" onclick="request()"
                        id="sendRequest" class="ja-container--btnlogin">Enviar</button>
                <p class="ja-alert" id="responseRequest"></p>
            </form>
        </div>
        <section class="globalSect">            
            <section id="formSect" class="ja-container-l">
                <div>
                    <img src="Pictures/baseline-how_to_reg-24px.png">
                </div>
                <h2>Ingresar a perfil</h2>

                <% Data control = Data.getInstance(); %>

                <p class="ja-alert" id="alertLogin"></p> 
                
                <%@page import="Controller.ControlLogin" %>
                <form class="ja-container-lf">
                    <div class="ja-container-lf1">
                        <p>Documento de identidad</p>
                        <div>
                            <div><img src="Pictures/baseline-assignment_ind-24px.png"></div>
                            <input name="username" id="username" placeholder="Enter our Identity Document"/>
                        </div> 
                    </div>
                    <div class="ja-container-lf1">
                        <p>Contrase&ntilde;a</p>
                        <div>
                            <div><img src="Pictures/baseline-vpn_key-24px.png"></div>
                            <input type="password" id="password" name="password" placeholder="Enter your Password"/>
                        </div>
                    </div>

                    <button id="btnLogin" class="ja-container--btnlogin" 
                            type="button" onclick="login()" name="Enter">Ingresar</button>
                    <br><br>
                    <input type="checkbox"/><a>Guardar sesión</a> || <a href="#">¿Olvidaste la contrase&ntilde;a</a>
                </form>
            </section>
            <section id="info-regSect" class="ja-container--info">
                <section id="infoSect">
                    <form>
                        <h2>En que consiste el programa</h2>
                        <p>
                            The best baccalaureate program consists in granting the academic benefit annually to the
                            twenty (20) best students of the municipality of Sibaté, who have completed the eleventh grade (11)
                            and have obtained the best scores in the tests carried out by the ICFES and that are
                            qualified in the SISBEN III in the range that applies for level 1,2,3 and its purpose will be to finance the
                            university education at undergraduate level in a university located in the territory
                            National.
                        </p>
                        <button id="btnInfo1" class="ja-container--btnlogin" 
                                type="button"
                                onclick="openRequest()"
                                name="SolicitarInfo">Solicitar informaci&oacute;n</button>
                    </form>
                </section>
                <section class="ja-container-lr">
                    <form action="Register.jsp">
                        <h2>Requirements</h2>
                        <p> To apply for one of these scholarships you must submit the following documents: </p>
                        <p> Identity Document </p>
                        <p> Certification Board of Community Action </p>
                        <p> Result test of state Know 11 </p>
                        <p> Grade Certificate </p>
                        <p> Diploma of degree </p>
                        <button type="submit" id="btnInfo" class="ja-container--btnlogin" name="Postular">Aplicar</button>
                    </form>
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


        <script src="JS/jquery-latest.min.js"></script>
        <script src="JS/login.js" type="text/javascript"></script>
    </body>
</html>