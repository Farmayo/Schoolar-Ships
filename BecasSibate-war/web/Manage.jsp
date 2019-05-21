
<%@page import="DataControl.ManageData"%>
<%@page import="DataControl.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="CSS/Manage.css" rel="stylesheet">
        <link type="text/css" href="CSS/global.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Administrador</title>
    </head>
    <body onload="buttonMenu(0)">
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
                <%@page import="Controller.ControlExit" %>
                <form action="ControlExit">
                    <button>
                        Salir
                        <img src="Pictures/xdExit.png">
                    </button>
                </form>
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
                    <button onclick="buttonMenu(0)" id="ja-tables-0">Administrar</button>
                    <button onclick="buttonMenu(1)" id="ja-tables-1">Enviar informaci&oacute;n</button>
                </div>
            </div>
            <div class="ja-tables">
                <h2>Edici&oacute;n de usuarios</h2>
                <div class="ja-table">
                    <table>
                        <caption class="ja-alert" id="result"></caption>
                        <thead>
                            <tr>
                                <th>
                                    Acciones
                                </th>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    Contrase&ntilde;a
                                </th>
                                <th>
                                    Correo
                                </th>
                                <th>
                                    Rol
                                </th>
                            </tr>
                        </thead>
                        <tbody id="body-u">
                            <% for (int i = 0; i < manage.getUsers().size(); i++) {%>
                            <% if (!manage.getUsers().get(i).getId().equals(control.getActiveUser().getId()))%>
                            <tr>
                                <td>
                                    <div>
                                        <button type="button" id="btn-s-<%= manage.getUsers().get(i).getId() %>"
                                                onclick="saveDataDB(<%= manage.getUsers().get(i).getId()%>, 'u')">
                                            <i class="fas fa-save"></i>
                                        </button>
                                        <button type="button" id="btn-e-<%= manage.getUsers().get(i).getId()%>"
                                                onclick="editData(<%= manage.getUsers().get(i).getId()%>)">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <button onclick="deleteDataDB('<%= manage.getUsers().get(i).getId()%>', <%= i%>)">
                                            <i class="fas fa-user-minus"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getId()%>" type="hidden"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getName()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getPassword()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getEmail()%>" disabled="true"></td>
                                <td><input class="<%= manage.getUsers().get(i).getId()%>" value="<%= manage.getUsers().get(i).getRol()%>" disabled="true"></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="ja-tables">
                <h2>Enviar informaci&oacute;n</h2>
                <div class="ja-table">
                    <table>
                        <caption class="ja-alert" id="result"></caption>
                        <thead>
                            <tr>
                                <th>
                                    Acciones
                                </th>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    Apellido
                                </th>
                                <th>
                                    Correo
                                </th>
                                <th>
                                    Comentario
                                </th>
                            </tr>
                        </thead>
                        <tbody id="body-users-r">
                            <% for (int i = 0; i < manage.getRequests().size(); i++) {%>
                            <tr>
                                <td>
                                    <div>
                                        <button ></button>
                                        <button type="button" id="btn-e-<%= manage.getRequests().get(i).getId()%>"
                                                onclick="deleteDataDB('<%= manage.getRequests().get(i).getId()%>', <%= i%>, 'r')" />
                                            <i class="fas fa-paper-plane"></i>
                                        </button>
                                        <button onclick="deleteDataDB('<%= manage.getRequests().get(i).getId()%>', <%= i%>, 'r')">
                                            <i class="fas fa-user-minus"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><input class="<%= manage.getRequests().get(i).getId()%>" value="<%= manage.getRequests().get(i).getId()%>" type="hidden"></td>
                                <td><input class="<%= manage.getRequests().get(i).getId()%>" value="<%= manage.getRequests().get(i).getName()%>" disabled="true"></td>
                                <td><input class="<%= manage.getRequests().get(i).getId()%>" value="<%= manage.getRequests().get(i).getLastname() %>" disabled="true"></td>
                                <td><input class="<%= manage.getRequests().get(i).getId()%>" value="<%= manage.getRequests().get(i).getEmail()%>" disabled="true"></td>
                                <td><input class="<%= manage.getRequests().get(i).getId()%>" value="<%= manage.getRequests().get(i).getComment() %>" disabled="true"></td>
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
        <script src="JS/jquery-latest.min.js"></script>
        <script src="JS/manage.js" type="text/javascript"></script>
    </body>
</html>
