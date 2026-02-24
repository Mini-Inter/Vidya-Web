<%@ page import="com.school.miniinter.models.Subject.Subject" %>
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
    String active = "subjects";

    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    %>
<body>
    <div class="container">

        <%@include file="../../common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Matérias</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img alt="" class="search-icon" src="../assets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="subjectInsert.jsp" class="btn-adicionar">
                    <img src="../assets/add.png" class="add-icon">
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
                                    <form action="<%=request.getContextPath()%>/adminSubjects?type=editSubject" method="post">
                                        <input name="subject" value="<%=subject.getId()%>" type="hidden">
                                        <button class="btn-edit" type="submit">
                                            <img src="../assets/editar.png">
                                        </button>
                                    </form>
                                    <button class="btn-delete"></button>
                                    <form action="<%=request.getContextPath()%>/adminSubjects?type=deleteSubject" method="post">
                                        <input name="subject" value="<%=subject.getId()%>" type="hidden">
                                        <button class="btn-delete" type="submit">
                                            <img src="../assets/deletar.png">
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