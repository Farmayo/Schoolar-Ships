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
    <header>
        <img src="Pictures/sibateLogo.png" width="100%" alt="SibateLogo">
    </header>
    <body>
        <section class="globalSect">
            <section id="formSect">
                <h2>Login to Profile</h2>
                
                <% Data control = Data.getInstance(); %>
                
                <%if(control.isTryUser()) { %> 
                    <p class="ja-alert">* Usuario no encontrado</p> 
                    <%  control.setTryUser(false); } %>
                <%if(control.isTryPassword()) { %>
                    <p class="ja-alert">* Contras&ntilde;a incorrecta</p>
                    <%  control.setTryPassword(false); } %>
                <%@page import="Controller.ControlLogin" %>
                <form action="ControlLogin">
                    <p>Identity Document</p>
                    <img src="Pictures/IconUserLogin.png">
                    <input id="loginForm" name="username" placeholder="Enter our Identity Document"/>
                    <br>
                    <p>Password</p>
                    <img src="Pictures/IconPassLogin.png">
                    <input type="password" id="loginForm" name="password" placeholder="Enter your Password"/>
                    <br><br>
                    <button id="btnLogin" value="Enter" name="Enter">Enter</button>
                    <br><br>
                    <input type="checkbox"/><a>Save Session</a> || <a href="#">Did you forget your password?</a>
                </form>
            </section>
            <section id="info-regSect">
                <section id="infoSect">
                    <form>
                        <h2>What is the Program?</h2>
                        <p>
                            The best baccalaureate program consists in granting the academic benefit annually to the
                            twenty (20) best students of the municipality of Sibaté, who have completed the eleventh grade (11)
                            and have obtained the best scores in the tests carried out by the ICFES and that are
                            qualified in the SISBEN III in the range that applies for level 1,2,3 and its purpose will be to finance the
                            university education at undergraduate level in a university located in the territory
                            National.
                        </p>
                        <button id="btnInfo" value="SolicitarInfo" name="SolicitarInfo">Ask for information</button>
                    </form>
                </section>
                <section id="regSect">
                    <form action="Register.jsp">
                        <h2>Requirements</h2>
                        <p> To apply for one of these scholarships you must submit the following documents: </ p>
                        <p> Identity Document </ p>
                        <p> Certification Board of Community Action </ p>
                        <p> Result test of state Know 11 </ p>
                        <p> Grade Certificate </ p>
                        <p> Diploma of degree </ p>
                            <button id="btnInfo" value="Postular" name="Postular">Apply</button>
                    </form>
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