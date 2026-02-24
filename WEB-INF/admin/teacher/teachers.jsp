<%@ page import="com.school.miniinter.models.Teacher.Teacher" %>
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
    String active = "teachers";

    List<Teacher> teachers = (List<Teacher>) session.getAttribute("teachers");
%>
<body>
    <div class="container">
        
        <%@include file="../../common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Professores</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img alt="" class="search-icon" src="../assets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="teacherInsert.jsp" class="btn-adicionar">
                    <img src="../assets/add.png" class="add-icon">
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
                                    <button class="btn-edit" type="submit"><img alt="" src="../assets/editar.png"></button>
                                    <form action="<%=request.getContextPath()%>/adminTeachers?type=deleteTeacher" method="post">
                                        <button class="btn-delete">
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