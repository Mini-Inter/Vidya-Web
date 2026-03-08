<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Reports.CompleteReport" %>
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
    request.setAttribute("active", "reports");

    List<CompleteReport> reports = (List<CompleteReport>) session.getAttribute("reports");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Observações</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <form class="search-box" action="${pageContext.request.contextPath}/adminReports?type=noot" method="get">
                    <img alt="" class="search-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                    <input name="search" id="search" type="text" class="search-input" placeholder="Buscar por nome">
                </form>
                <a href="${pageContext.request.contextPath}/adminReports?type=create" class="btn-adicionar">
                    <img src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                    <span>Adicionar</span>
                </a>
            </div>
            <div class="table-section">
                <div class="table-container">
                    <%
                    if (reports==null || reports.isEmpty()) {
                    %>
                    <h2>Nenhuma observação encontrada!</h2>
                    <%
                        } else {
                    %>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Professor</th>
                                <th>Descrição</th>
                                <th>Tipo</th>
                                <th>Enviado em</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            for (CompleteReport report : reports) {
                            %>
                            <tr>
                                <td><%=report.getId()%></td>
                                <td><%if(report.getTeacher() == null){%>-
                                    <%}else{%><%=report.getTeacher()%><%}%></td>
                                <td><%=report.getDescription()%></td>
                                <td><%=report.getType()%></td>
                                <td><%=report.getSend_at()%></td>
                                <td class="actions">
                                    <form action="${pageContext.request.contextPath}/adminReports?type=edit" method="get">
                                        <input name="type" value="edit" type="hidden">
                                        <input name="report" value="<%=report.getId()%>" type="hidden">
                                        <button class="btn-edit" type="submit">
                                            <img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png">
                                        </button>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/adminReports?type=delete" method="post">
                                        <input name="report" value="<%=report.getId()%>" type="hidden">
                                        <button class="btn-delete" type="submit">
                                            <img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/deletar.png">
                                        </button>
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