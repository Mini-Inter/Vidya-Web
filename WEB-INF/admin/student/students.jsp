<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Class.Class" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.PreRegistration.PreRegistration" %>
<%@ page import="com.school.miniinter.models.Students.Students" %>
<%@ page import="com.school.miniinter.models.Students.Summary" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/imgs/vidya.svg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vidya - CRUD</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssAdmin/crud.css">
</head>
<%
    request.setAttribute("active", "students");

    List<Summary> students = (List<Summary>) session.getAttribute("students");
%>
<body>
    <div class="container">

        <%@include file="/common/sidebarAdmin.jsp"%>

        <main class="main-content">
            <h1>Alunos</h1>
            <h4>CRUD</h4>
            <div class="table-controls">
                <div class="search-box">
                    <img alt="" class="search-icon" src="${pageContext.request.contextPath}/assets/AdminAssets/pesquisar.png">
                    <input type="text" class="search-input" placeholder="Buscar por nome">
                </div>
                <a href="${pageContext.request.contextPath}/adminStudents?type=create" class="btn-adicionar">
                    <img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/add.png" class="add-icon">
                   <span>Adicionar</span>
                </a>
            </div>

            <div class="table-section">
                <div class="table-container">
                    <%
                    if (students==null || students.isEmpty()) {
                    %>
                    <h2>Nenhum estudante encontrado!</h2>
                    <%
                        } else {
                    %>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Matrícula</th>
                                <th>Turma</th>
                                <th>Responsável</th>
                                <th>Nome completo</th>
                                <th>Primeiro nome</th>
                                <th>Último nome</th>
                                <th>Data de nascimento</th>
                                <th>Telefone</th>
                                <th>Email</th>
                                <th>Criado em</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            for (Summary student : students) {
                            %>
                            <tr>
                                <td><%=student.getMatricula()%></td>
                                <td><%=student.getSeries()%>°<%=student.getClassroom()%></td>
                                <td><%=student.getGuardian()%></td>
                                <td><%=student.getName()%></td>
                                <td><%=student.getFirstName()%></td>
                                <td><%=student.getLastName()%></td>
                                <td><%=student.getBirthDate()%></td>
                                <td><%=student.getPhone()%></td>
                                <td><%=student.getEmail()%></td>
                                <td><%=student.getCreatedAt()%></td>
                                <td class="actions">
                                    <form action="${pageContext.request.contextPath}/adminStudents?type=edit" method="get">
                                        <input name="type" value="edit" type="hidden">
                                        <input name="student" value="<%=student.getMatricula()%>" type="hidden">
                                        <button class="btn-edit" type="submit">
                                            <img alt="" src="${pageContext.request.contextPath}/assets/AdminAssets/editar.png">
                                        </button>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/adminStudents?type=delete" method="post">
                                        <input name="student" value="<%=student.getMatricula()%>" type="hidden">
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