<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/crud.css">
</head>
<%
    request.setAttribute("active", "teachers");

    List<Teacher> teachers = (List<Teacher>) session.getAttribute("teachers");
%>
<body>
    <div class="container">
        
        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Professores</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img alt="" class="search-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="${pageContext.request.contextPath}/adminTeachers?type=create" class="btn-adicionar">
                    <img src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                    <span>Adicionar</span>
                </a>
            </div>
            <div class="table-section">
                <div class="table-container">
                    <%
                        if (teachers==null || teachers.isEmpty()) {
                    %>
                    <h2>Nenhum professor encontrado!</h2>
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
                                <th>Telefone</th>
                                <th>Login</th>
                                <th>Criado em</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Teacher teacher : teachers) {
                            %>
                            <tr>
                                <td><%=teacher.getId()%></td>
                                <td><%=teacher.getName()%></td>
                                <td><%=teacher.getFirstName()%></td>
                                <td><%=teacher.getLastName()%></td>
                                <td><%=teacher.getBirthDate()%></td>
                                <td><%=teacher.getPhone()%></td>
                                <td><%=teacher.getLogin()%>@vidya.org.br</td>
                                <td><%=teacher.getCreatedAt()%></td>
                                <td class="actions">
                                    <form action="${pageContext.request.contextPath}/adminTeachers?type=edit" method="get">
                                        <input name="type" value="edit" type="hidden">
                                        <input name="subject" value="<%=teacher.getId()%>" type="hidden">
                                        <button class="btn-edit" type="submit"><img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png"></button>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/adminTeachers?type=delete" method="post">
                                        <input name="subject" value="<%=teacher.getId()%>" type="hidden">
                                        <button class="btn-delete">
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