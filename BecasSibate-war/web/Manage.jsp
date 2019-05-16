<%-- 
    Document   : Manage
    Created on : May 15, 2019, 4:30:44 PM
    Author     : JAIRJAP
--%>

<%@page import="DataControl.ManageData"%>
<%@page import="DataControl.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/Manage.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Administrador</title>
    </head>
    <body>
        <%
            Data control = Data.getInstance();
            ManageData manage = ManageData.getInstance();
        %>
        <header>
            <div>
                <img src="Pictures/store.png">
                <h2>Alcald&iacute;a de Sibat&eacute;</h2>
            </div>
            <div>
                <button>
                    Salir
                    <img src="Pictures/xdExit.png">
                </button>
            </div>
        </header>
        <section class="ja-container-body">
            <div>
                <div>
                    <img src="Pictures/man_avatar.png">
                    <h4><%= control.getActiveUser().getName()%></h4>
                    <h3><%= control.getActiveUser().getEmail()%></h3>
                </div>

                <div>
                    <button class="selected">Administrar</button>
                    <button>Enviar informaci&oacute;n</button>
                    <button>Editar perfil</button>
                </div>
            </div>
            <div>
                <h2>Edici&oacute;n de usuarios</h2>
                <div class="ja-table">
                    <table>
                        <thead>
                            <tr>
                                <th>
                                    Acciones
                                </th>
                                <th>
                                    ID Usuario
                                </th>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    Correo
                                </th>
                                <th>
                                    Rol
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < manage.getUsers().size(); i++) {%>
                            <tr>
                                <td>
                                    <div>
                                        <button type="button" id="'btn-s-' + <%= manage.getUsers().get(i).getId() %>"
                                                onclick="updateData(<%= manage.getUsers().get(i).getId() %>)"
                                                style="display: none">
                                            <i class="fas fa-save"></i>
                                        </button>
                                        <button type="button" id="'btn-e-' + <%= manage.getUsers().get(i).getId() %>"
                                                onclick="editData(<%= manage.getUsers().get(i).getId() %>)">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <button>
                                            <i class="fas fa-user-minus"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getId()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getName()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getEmail()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getRol()%>" disabled="true"></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
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

        <script src="JS/manage.js" type="text/javascript"></script>
    </body>
</html>
