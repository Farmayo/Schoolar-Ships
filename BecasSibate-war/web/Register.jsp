<%-- 
    Document   : Register
    Created on : 4/05/2019, 09:39:21 PM
    Author     : farma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/RegisterStyles.css" rel="stylesheet">
        <link type="text/css" href="CSS/Footer_Header.css" rel="stylesheet">
    </head>
    <header>
        <img src="Pictures/sibateLogo.png" width="100%" alt="SibateLogo">
    </header>
    <body>
        <section class="globalSect">
            <form action="Login.jsp" method="post" enctype="multipart/form-data">
                <section id="formRegister">
                    <h2>Applicant personal data</h2>
                    <section>
                        <input id="loginForm" name="Name" placeholder="Name"/><label>*</label>
                        <br><br>                    
                        <input id="loginForm" name="Document" placeholder="Identity Document"/><label>*</label>
                        <br>
                        <h4>Birthdate<label>*</label></h4>
                        <input id="loginForm" type="date "name="Date"/>
                        <br>
                        <label>Male</label>
                        <input type="radio" name="sex" value="Male"/>
                        <label>Female</label>
                        <input type="radio" name="sex" value="Female"/>
                        <label>*</label>
                    </section>
                    <br>
                    <section>
                        <input id="loginForm" name="LastName" placeholder="LastName"/>
                        <br><br>                    
                        <input id="loginForm" name="Email" placeholder="Email"/>
                        <br><br>
                        <input id="loginForm" name="Username" placeholder="Username"/>
                        <br><br>
                        <input id="loginForm" name="Password" placeholder="Password"/>
                        <br><br>                    
                        <input id="loginForm" name="PasswordR" placeholder="Repeat Password"/>
                        <br>
                    </section>

                </section>
                <section id="archivosSect">
                    <label>Certification of Residence in the Municipality</label>
                    <input type="file" name="certificacionAccionComunal" accept=".pdf" /><br><br>
                    <label>Results Test Know 11</label>
                    <input type="file" name="Icfes" accept=".pdf" /><br><br>
                    <label>Letter of the Sisben</label>
                    <input type="file" name="Sisben" accept=".pdf" /><br><br>
                    <label>Degree Records</label>
                    <input type="file" name="ActaGrado" accept=".pdf" /><br><br>
                    <label>Degree Diploma</label>
                    <input type="file" name="DiplomaGrado" accept=".pdf" /><br><br>
                    <br><br>
                    <label>Note: The files must be attached in PDF format</label>
                    <br><br>
                    <button id="btnRegister" value="Postular" name="Postular">Apply</button>
                    <br><br>
                </section>
            </form>
            <form action="Login.jsp">
                <button id="btnRegister" value="Cancelar" name="Cancelar">Cancel</button>
            </form>
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
