<%@ page import="com.school.miniinter.models.Subject.Subject" %>
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
    request.setAttribute("active", "subjects");

    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    %>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Matérias</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <form class="search-box" action="${pageContext.request.contextPath}/adminSubjects?type=noot" method="get">
                    <img alt="" class="search-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                    <input name="search" id="search" type="text" class="search-input" placeholder="Buscar por nome">
                </form>
                <a href="${pageContext.request.contextPath}/adminSubjects?type=create" class="btn-adicionar">
                    <img src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                    <span>Adicionar</span>
                </a>
            </div>
            <div class="table-section">
                <div class="table-container">
                    <%
                    if (subjects==null || subjects.isEmpty()) {
                    %>
                    <h2>Nenhuma matéria encontrada!</h2>
                    <%
                        } else {
                    %>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nome</th>
                                <th>Descrição</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Subject subject : subjects) {
                            %>
                            <tr>
                                <td><%=subject.getId()%></td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getDescription()%></td>
                                <td class="actions">
                                    <form action="${pageContext.request.contextPath}/adminSubjects?type=edit" method="get">
                                        <input name="type" value="edit" type="hidden">
                                        <input name="subject" value="<%=subject.getId()%>" type="hidden">
                                        <button class="btn-edit" type="submit">
                                            <img src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png">
                                        </button>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/adminSubjects?type=delete" method="post">
                                        <input name="subject" value="<%=subject.getId()%>" type="hidden">
                                        <button class="btn-delete" type="submit">
                                            <img src="${pageContext.request.contextPath}/assets/AdminAssets/deletar.png">
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