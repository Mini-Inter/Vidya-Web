<%@ page import="com.school.miniinter.models.Subject.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="com.school.miniinter.models.Students.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("active", "report");
    List<Subject> subjects = (List<Subject>) session.getAttribute("subjects");
    int idSubject = (Integer) session.getAttribute("subject");
    List<Students> students = (List<Students>) session.getAttribute("students");
%>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cssTeacher/observations.css">
    <title>Vidya - Professor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/geral/link.css">
</head>

<body>
<div class="container">

    <%@ include file="../../common/sidebarTeacher.jsp"%>

    <main class="main-content">
        <header class="page-header">
            <h1>Observações</h1>
        </header>

        <%
            if (students.isEmpty()) {
        %>
        <h1>Nenhum aluno encontrado!</h1>
        <%
        } else {
        %>

        <form action="teacherReports" class="tabs">

            <input type="radio" name="tab" id="enviadas"
                   onchange="this.form.submit()" value="showReports">
            <input type="radio" name="tab" id="criar" checked
                   onchange="this.form.submit()" value="showCreation">

            <div class="filters">
                <label for="enviadas" class="tab-btn">Enviadas</label>
                <label for="criar" class="tab-btn">Criar</label>
            </div>
        </form>
        <form class="content" action="teacherReports" method="post">
            <div class="tab-content criar">
                <div class="form-wrapper">
                    <div class="card">

                        <h2>Nova observação</h2>

                        <label>Aluno</label>
                        <select name="student">
                            <%
                                for (Students student : students) {
                            %>
                            <option value="<%=student.getId_student()%>"><%=student.getFull_name()%></option>
                            <%
                                }
                            %>
                        </select>
                        <label>Tipo de observação</label>
                        <div class="tipo-buttons">
                            <input type="radio" name="type" value="praise" id="enviar">
                            <label for="enviar">Elogio</label>
                            <input type="radio" name="type" value="notice" id="aviso">
                            <label for="aviso">Aviso</label>
                            <input type="radio" name="type" value="info" id="informativo">
                            <label for="informativo">Informativo</label>
                        </div>

                        <label>Observação</label>
                        <textarea placeholder="Escreva sua observação..."
                        name="description"></textarea>

                        <div class="actions">
                            <input type="submit" id="enviarForm" class="primary" value="Enviar">
                            <input type="reset" id="redefinir" class="secondary" value="Redefinir">
                        </div>

                    </div>
                </div>
            </div>
        </form>

        <%
            }
        %>

        <%@include file="../../common/sidebarTeacherChangeSubject.jsp"%>
    </main>
</div>
</body>

</html>
