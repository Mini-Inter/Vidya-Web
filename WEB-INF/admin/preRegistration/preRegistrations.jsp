<%@ page import="com.school.miniinter.models.PreRegistration.PreRegistration" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="crud.css">
</head>

<%
    List<PreRegistration> preRegistrations = (List<PreRegistration>) 
            session.getAttribute("preRegistrations");
%>

<body>
<div class="container">

    <%@include file="/common/sidebarAdmin.jsp"%>

    <main class="main-content">
        <h1>Pré registro</h1>
        <h4>CRUD</h4>
        <div class="table-controls">
            <form class="search-box" 
                  action="${pageContext.request.contextPath}/adminPreRegistration">
                <img class="search-icon" 
                     src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                <input type="text" name="search" class="search-input" 
                       placeholder="Buscar por cpf">
            </form>
            <a 
                    href="${pageContext.request.contextPath}/adminPreRegistration?type=create" 
               class="btn-adicionar">
                <img src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                <span>Adicionar</span>
            </a>
        </div>
        <div class="table-section">
            <div class="table-container">
                <table class="data-table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome completo</th>
                        <th>CPF</th>
                        <th>Ações</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        if (preRegistrations == null ||
                                preRegistrations.isEmpty()) {
                    %>
                    <h2>Não foi encontrado nenhum pré registro</h2>
                    <%
                        } for (PreRegistration preRegister : preRegistrations) {
                    %>
                    <tr>
                        <td><%=preRegister.getId()%></td>
                        <td><%=preRegister.getName_student()%></td>
                        <td><%=preRegister.getCpf()%></td>
                        <td class="actions">
                            <a class="btn-edit"
                               href="${pageContext.request.contextPath}/adminStudents?type=edit"><img src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png"></a>
                            <button class="btn-delete"><img src="${pageContext.request.contextPath}/assets/AdminAssets/deletar.png"></button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</div>
</body>

</html>