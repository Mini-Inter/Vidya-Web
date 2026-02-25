<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="../css/crud.css">
</head>
<%
    String active = "classes";

    List<Class> classes = (List<Class>) session.getAttribute("classes");
%>
<body>
    <div class="container">

        <%@include file="../../../common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Turmas</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img class="search-icon" src="../assets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="classInsert.jsp" class="btn-adicionar">
                    <img src="../assets/add.png" class="add-icon">
                    <span>Adicionar</span>
                </a>
            </div>
            <div class="table-section">
                <div class="table-container">
                    <%
                    if (classes == null || classes.isEmpty()) {
                    %>
                    <h2>Nenhuma turma encontrada!</h2>
                    <%
                        } else {
                    %>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Série</th>
                                <th>Sala</th>
                                <th>Ano Letivo</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            for (Class classroom : classes) {
                        %>
                            <tr>
                                <td><%=classroom.getId()%></td>
                                <td><%=classroom.getSeries()%>º Ano</td>
                                <td><%=classroom.getClassroom()%></td>
                                <td><%=classroom.getId()%></td>
                                <td class="actions">
                                    <a class="btn-edit" href="<%=request.getContextPath()%>/adminClasses?type=editClass">
                                        <img src="../assets/editar.png">
                                    </a>
                                    <form action="<%=request.getContextPath()%>/adminClasses?type=deleteStudent" method="post">
                                        <button class="btn-delete"><img src="../assets/deletar.png"></button>
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