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
                    <label>Sibat&eacute; City Hall</label>
                </section>
                <section id="sect1-2">
                    <form>
                        <input type="search" placeholder="Search"/>
                        <input type="submit" value="&#10140;"/>
                    </form>
                </section>
                <section id="sect1-3">
                    <section>
                        <a id="icons" href="#"><img src="Pictures/Notificaciones.png"></a>
                    </section>
                    <section>
                        <a id="icons" href="Settings.jsp"><img src="Pictures/Configuracion.png"></a>
                    </section>
                    <section>
                        <a id="icons" href="Login.jsp"><img src="Pictures/IconExitWhite.png"></a>
                    </section>
                </section>
            </section>

            <section id="sect2">
                <section id="sect2-1">
                    <section id="sect2-11">
                        <img id="imgUser" src="Pictures/IconUserLogin.png">
                        <h4 id="textInfo">Full Name</h4>
                        <h5 id="textInfo">Career</h5>
                        <h6 id="textInfo">ECCI University</h6>
                    </section>
                    <section id="sect2-12">
                        <a href="#">Update Information</a>
                        </br></br>
                        <a href="#">Update Files</a>
                        </br></br>
                        <a href="#">Settings</a>
                    </section>
                </section>

                <section id="sectSettings1">
                    <section id="sectSettings1-1">
                        <h2>Change Profile Picture</h2>
                        
                        <section>
                            <img id="imgUser" src="Pictures/IconUserLogin.png">
                        </section>
                        <section>
                            <a id="icons"><img src="Pictures/deleteIcon.png"></a>
                            <h4>Delete</h4>
                        </section>
                        <section>
                            <a id="icons"><img src="Pictures/uploadFiles.png"></a>
                            <h4>Upload from Computer</h4>
                        </section>
                        <section>
                             <a id="icons"><img src="Pictures/uploadURL.png"></a>
                             <h4>Upload from URL</h4>
                        </section>          
                        
                    </section>
                    <section id="sectSettings1-2">
                        <h2>Privacity</h2>
                        <section>
                            <form action="#">
                                <h3>Change Username</h3>
                                <input type="text" name="Username" placeholder="New Username" />
                                <h3>Change Password</h3>
                                <input type="text" name="Password" placeholder="Current Password" />
                                <input type="text" name="NewPassword" placeholder="New Password" />
                                <input type="text" name="NewPasswordR" placeholder="Repeat New Password" />
                                </br></br>
                                <button>Confirm Changes</button>
                                <button>Cancel</button>
                            </form>
                        </section>
                    </section>
                    <section id="sectSettings1-3">
                        <h2>Documents</h2>
                    </section>

                </section>


            </section>
        </section>
    </body>
    <footer>
        <section id="footerSect">
            <section>Follow us on our Social Networks</section>
            <section><a href="#">Instagram <img src="Pictures/instagramLogo.png"></a></section>
            <section><a href="#">Faceboook <img src="Pictures/facebookLogo.png"></a></section>
            <section><a href="#">Twitter <img src="Pictures/twitterLogo.png"></a></section>
            <section><a href="#">YouTube <img src="Pictures/youtubeLogo.png"></a></section>
            <section><a href="#">Elaborated by Didacticos CSJ</a></section>            
        </section>
    </footer>
</html>