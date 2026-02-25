<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Reports.CompleteReport" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/crud.css">
</head>
<%
    String active = "reports";

    List<CompleteReport> reports = (List<CompleteReport>) session.getAttribute("reports");
%>
<body>
    <div class="container">

        <%@include file="../../../common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Observações</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img class="search-icon" src="../assets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="reportInsert.jsp" class="btn-adicionar">
                    <img src="../assets/add.png" class="add-icon">
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
                                <td><%=report.getTeacher()%></td>
                                <td><%=report.getDescription()%></td>
                                <td><%=report.getType()%></td>
                                <td><%=report.getSend_at()%></td>
                                <td class="actions">
                                    <form action="<%=request.getContextPath()%>/adminReports?type=editReport" method="post">
                                        <button class="btn-edit" type="submit">
                                            <img alt="" src="../assets/editar.png">
                                        </button>
                                    </form>
                                    <form action="<%=request.getContextPath()%>/adminReports?type=deleteReport" method="post">
                                        <button class="btn-delete" type="submit">
                                            <img alt="" src="../assets/deletar.png">
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