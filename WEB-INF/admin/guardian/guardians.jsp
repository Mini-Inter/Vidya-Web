<%@ page import="com.school.miniinter.models.Guardian.Guardian" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/crud.css">
</head>
<%
    request.setAttribute("active", "guardians");

    List<Guardian> guardians = (List<Guardian>) session.getAttribute("guardians");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Responsáveis</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img class="search-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="${pageContext.request.contextPath}/adminGuardians?type=create" class="btn-adicionar">
                    <img src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                    <span>Adicionar</span>
                </a>
            </div>
            <div class="table-section">
                <div class="table-container">
                    <%
                        if (guardians == null || guardians.isEmpty()) {
                    %>
                    <h2>Nenhum responsável encontrado!</h2>
                    <%
                        } else {
                    %>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nome completo</th>
                                <th>Primeiro nome</th>
                                <th>Último nome</th>
                                <th>Data de nascimento</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Guardian guardian : guardians) {
                            %>
                            <tr>
                                <td><%=guardian.getId()%></td>
                                <td><%=guardian.getName()%></td>
                                <td><%=guardian.getFirstName()%></td>
                                <td><%=guardian.getLastName()%></td>
                                <td><%=guardian.getBirthDate()%></td>
                                <td class="actions">
                                    <form action="${pageContext.request.contextPath}/adminGuardians?type=edit" method="get">
                                        <input name="type" value="edit" type="hidden">
                                        <input name="guardian" value="<%=guardian.getId()%>" type="hidden">
                                        <button class="btn-edit" type="submit">
                                            <img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png">
                                        </button>
                                    </form>
                                    <form
                                            action="${pageContext.request.contextPath}/adminGuardians?type=delete" method="post">
                                        <input name="guardian" value="<%=guardian.getId()%>" type="hidden">
                                        <button type="submit" class="btn-delete"><img src="${pageContext.request.contextPath}/assets/AdminAssets/deletar.png"></button>
                                    </form>
                                </td>
                            </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                    <%
                        }
                    %>
                </div>
            </div>
        </main>
    </div>
</body>
</html>